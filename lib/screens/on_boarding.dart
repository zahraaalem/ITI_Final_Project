import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/circle_progress_bar.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:iti_final_project/screens/login.dart';





class onBoarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Rent & Buy',
      subTitle: 'Discover, rent, and own movies anywhere now',
      imageUrl: 'assets/images/rent_buy.jpg',
    ),
    Introduction(
      title: 'Enjoy Movies',
      subTitle: 'Indulge in movies anytime, anywhere with our app',
      imageUrl: 'assets/images/enjoy_watching.jpg',
    ),
    Introduction(
      title: 'Finish',
      subTitle: 'get started now and order directly from the application',
      imageUrl: 'assets/images/finish1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      backgroudColor: Colors.white,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}