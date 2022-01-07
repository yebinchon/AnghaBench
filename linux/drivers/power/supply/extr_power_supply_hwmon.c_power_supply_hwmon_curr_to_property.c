
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int POWER_SUPPLY_PROP_CURRENT_AVG ;
 int POWER_SUPPLY_PROP_CURRENT_MAX ;
 int POWER_SUPPLY_PROP_CURRENT_NOW ;




__attribute__((used)) static int power_supply_hwmon_curr_to_property(u32 attr)
{
 switch (attr) {
 case 130:
  return POWER_SUPPLY_PROP_CURRENT_AVG;
 case 128:
  return POWER_SUPPLY_PROP_CURRENT_MAX;
 case 129:
  return POWER_SUPPLY_PROP_CURRENT_NOW;
 default:
  return -EINVAL;
 }
}
