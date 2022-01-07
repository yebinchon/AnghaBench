
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EINVAL ;



 int power_supply_hwmon_curr_to_property (int ) ;
 int power_supply_hwmon_in_to_property (int ) ;
 int power_supply_hwmon_temp_to_property (int ,int) ;

__attribute__((used)) static int
power_supply_hwmon_to_property(enum hwmon_sensor_types type,
          u32 attr, int channel)
{
 switch (type) {
 case 129:
  return power_supply_hwmon_in_to_property(attr);
 case 130:
  return power_supply_hwmon_curr_to_property(attr);
 case 128:
  return power_supply_hwmon_temp_to_property(attr, channel);
 default:
  return -EINVAL;
 }
}
