
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* tzp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int sustainable_power; } ;


 int EIO ;
 int sprintf (char*,char*,int) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
sustainable_power_show(struct device *dev, struct device_attribute *devattr,
         char *buf)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);

 if (tz->tzp)
  return sprintf(buf, "%u\n", tz->tzp->sustainable_power);
 else
  return -EIO;
}
