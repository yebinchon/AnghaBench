
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int thermal_zone_get_temp (struct thermal_zone_device*,int*) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
temp_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);
 int temperature, ret;

 ret = thermal_zone_get_temp(tz, &temperature);

 if (ret)
  return ret;

 return sprintf(buf, "%d\n", temperature);
}
