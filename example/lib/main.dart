import 'package:flutter/material.dart';
import 'package:theme_patrol2/theme_patrol2.dart';
import 'features.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const switchColor = Colors.red;
    return ThemePatrol(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: switchColor,
        primaryColor: switchColor,
        colorScheme: ColorScheme.light(secondary: switchColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: switchColor,
        primaryColor: switchColor,
        colorScheme: ColorScheme.dark(secondary: switchColor),
        // accentColor: Colors.red,
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return null;
                }
                if (states.contains(WidgetState.selected)) {
                  return switchColor;
                }
                return null;
              }),
          trackColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return null;
                }
                if (states.contains(WidgetState.selected)) {
                  return switchColor;
                }
                return null;
              }),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return null;
                }
                if (states.contains(WidgetState.selected)) {
                  return switchColor;
                }
                return null;
              }),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return null;
                }
                if (states.contains(WidgetState.selected)) {
                  return switchColor;
                }
                return null;
              }),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      mode: ThemeMode.system,
      builder: (context, theme) {
        return MaterialApp(
          title: 'Smart Select',
          theme: theme?.light,
          darkTheme: theme?.dark,
          themeMode: theme?.mode,
          home: Features(),
        );
      },
    );
  }
}
