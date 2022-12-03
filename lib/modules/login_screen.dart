// ignore_for_file: prefer_const_constructors

import 'package:first_class/modules/home_screen.dart';
import 'package:first_class/widgets/custom_button.dart';
import 'package:first_class/widgets/input_text_field.dart';
import 'package:first_class/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffCAA1FF), Color(0xff8EADFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [
              const Spacer(),
              const Text(
                "Welcome,",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24),
              ),
              const Text(
                "Glad to see you!",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 40,
              ),
              InputTextField(
                label: "Email Address",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              PasswordTextField(
                label: "Password",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                  label: "Login",
                  textColor: Colors.black,
                  buttonColor: Colors.white,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Sign Up Now",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}