
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int POWER_SUPPLY_PROP_TEMP ;
 int POWER_SUPPLY_PROP_TEMP_ALERT_MAX ;
 int POWER_SUPPLY_PROP_TEMP_ALERT_MIN ;
 int POWER_SUPPLY_PROP_TEMP_AMBIENT ;
 int POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX ;
 int POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN ;
 int POWER_SUPPLY_PROP_TEMP_MAX ;
 int POWER_SUPPLY_PROP_TEMP_MIN ;






__attribute__((used)) static int power_supply_hwmon_temp_to_property(u32 attr, int channel)
{
 if (channel) {
  switch (attr) {
  case 132:
   return POWER_SUPPLY_PROP_TEMP_AMBIENT;
  case 128:
   return POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN;
  case 130:
   return POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX;
  default:
   break;
  }
 } else {
  switch (attr) {
  case 132:
   return POWER_SUPPLY_PROP_TEMP;
  case 131:
   return POWER_SUPPLY_PROP_TEMP_MAX;
  case 129:
   return POWER_SUPPLY_PROP_TEMP_MIN;
  case 128:
   return POWER_SUPPLY_PROP_TEMP_ALERT_MIN;
  case 130:
   return POWER_SUPPLY_PROP_TEMP_ALERT_MAX;
  default:
   break;
  }
 }

 return -EINVAL;
}
