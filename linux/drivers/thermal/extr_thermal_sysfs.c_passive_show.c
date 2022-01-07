
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int forced_passive; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
passive_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);

 return sprintf(buf, "%d\n", tz->forced_passive);
}
