
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *to_led_name(int selector)
{
 switch (selector) {
 case 131:
  return "amber";
 case 129:
  return "green";
 case 128:
  return "off";
 case 130:
  return "auto";
 default:
  return "??";
 }
}
