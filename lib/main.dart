import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:adsdemo/ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(home: adsdemo(),));
}

class adsdemo extends StatefulWidget {
  const adsdemo({Key? key}) : super(key: key);

  @override
  State<adsdemo> createState() => _adsdemoState();
}

class _adsdemoState extends State<adsdemo> {
  @override
  void initState() {
    super.initState();
    ads.bannerad();
    // Load ads.
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 800,
            width: 500,
            color: Colors.blueGrey,
            alignment: Alignment.bottomCenter,

            // width: ads.myBanner!.size.width.toDouble(),
            // height: ads.myBanner!.size.height.toDouble(),
            child: AdWidget(ad: ads.myBanner!),
          ),
          ElevatedButton(onPressed: () {

          }, child: Text("ads"))
        ],
      ),
    );
  }
}
