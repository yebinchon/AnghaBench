
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum charge_mode { ____Placeholder_charge_mode } charge_mode ;







 int EINVAL ;
 int POWER_SUPPLY_CHARGE_TYPE_ADAPTIVE ;
 int POWER_SUPPLY_CHARGE_TYPE_CUSTOM ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_STANDARD ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;

__attribute__((used)) static int charge_mode_to_psp_val(enum charge_mode mode)
{
 switch (mode) {
 case 132:
  return POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
 case 129:
  return POWER_SUPPLY_CHARGE_TYPE_FAST;
 case 128:
  return POWER_SUPPLY_CHARGE_TYPE_STANDARD;
 case 131:
  return POWER_SUPPLY_CHARGE_TYPE_ADAPTIVE;
 case 130:
  return POWER_SUPPLY_CHARGE_TYPE_CUSTOM;
 default:
  return -EINVAL;
 }
}
