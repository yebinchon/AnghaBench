
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *opmode_str(int oper_mode)
{
 switch (oper_mode) {
 case 128:
  return "Wi-Fi alone";
 case 134:
  return "BT EDR alone";
 case 132:
  return "BT LE alone";
 case 133:
  return "BT Dual";
 case 131:
  return "Wi-Fi STA + BT EDR";
 case 129:
  return "Wi-Fi STA + BT LE";
 case 130:
  return "Wi-Fi STA + BT DUAL";
 case 136:
  return "Wi-Fi AP + BT EDR";
 case 135:
  return "Wi-Fi AP + BT DUAL";
 }

 return "Unknown";
}
