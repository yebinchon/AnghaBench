
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHARGE_MODE_AC ;
 int CHARGE_MODE_AUTO ;
 int CHARGE_MODE_CUSTOM ;
 int CHARGE_MODE_EXP ;
 int CHARGE_MODE_STD ;
 int EINVAL ;






__attribute__((used)) static int psp_val_to_charge_mode(int psp_val)
{
 switch (psp_val) {
 case 128:
  return CHARGE_MODE_AC;
 case 130:
  return CHARGE_MODE_EXP;
 case 129:
  return CHARGE_MODE_STD;
 case 132:
  return CHARGE_MODE_AUTO;
 case 131:
  return CHARGE_MODE_CUSTOM;
 default:
  return -EINVAL;
 }
}
