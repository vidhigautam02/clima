import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  Future<void> getlocation() async{
    Location  location =Location();
    await Location().getcurrentlocation();
    print(location.latitude);
    print(location.longitude);
  }
  @override
  void initState() {
    getlocation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
