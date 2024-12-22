import 'package:flutter/material.dart';
import 'package:flutter_absensi_app/presentation/auth/pages/login_page.dart';

import '../../../core/core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.pushReplacement(const LoginPage()),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 5, 4),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Assets.images.logoWhite.image(),
          ),
          const Spacer(),
          Assets.images.ravonsProject.image(height: 70),
          const SpaceHeight(20.0),
        ],
      ),
    );
  }
}
