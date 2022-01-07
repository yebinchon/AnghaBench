
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int ds3232_hwmon_read_temp (struct device*,long*) ;


__attribute__((used)) static int ds3232_hwmon_read(struct device *dev,
        enum hwmon_sensor_types type,
        u32 attr, int channel, long *temp)
{
 int err;

 switch (attr) {
 case 128:
  err = ds3232_hwmon_read_temp(dev, temp);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
