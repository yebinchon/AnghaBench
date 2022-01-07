
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int hwmon_temp ;
 scalar_t__ hwmon_temp_label ;

__attribute__((used)) static bool power_supply_hwmon_is_a_label(enum hwmon_sensor_types type,
        u32 attr)
{
 return type == hwmon_temp && attr == hwmon_temp_label;
}
