
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;



__attribute__((used)) static int power_supply_hwmon_read_string(struct device *dev,
       enum hwmon_sensor_types type,
       u32 attr, int channel,
       const char **str)
{
 *str = channel ? "temp" : "temp ambient";
 return 0;
}
