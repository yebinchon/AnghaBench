
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *regulator_opmode_to_str(int mode)
{
 switch (mode) {
 case 131:
  return "fast";
 case 129:
  return "normal";
 case 130:
  return "idle";
 case 128:
  return "standby";
 }
 return "unknown";
}
