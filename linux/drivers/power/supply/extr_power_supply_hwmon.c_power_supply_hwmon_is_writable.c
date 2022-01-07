
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;



 int hwmon_curr_max ;

 int hwmon_in_max ;
 int hwmon_in_min ;

 int hwmon_temp_max ;
 int hwmon_temp_max_alarm ;
 int hwmon_temp_min ;
 int hwmon_temp_min_alarm ;

__attribute__((used)) static bool power_supply_hwmon_is_writable(enum hwmon_sensor_types type,
        u32 attr)
{
 switch (type) {
 case 129:
  return attr == hwmon_in_min ||
         attr == hwmon_in_max;
 case 130:
  return attr == hwmon_curr_max;
 case 128:
  return attr == hwmon_temp_max ||
         attr == hwmon_temp_min ||
         attr == hwmon_temp_min_alarm ||
         attr == hwmon_temp_max_alarm;
 default:
  return 0;
 }
}
