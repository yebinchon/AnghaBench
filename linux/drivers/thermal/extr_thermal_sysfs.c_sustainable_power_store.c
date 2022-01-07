
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct thermal_zone_device {TYPE_1__* tzp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int sustainable_power; } ;


 size_t EINVAL ;
 size_t EIO ;
 scalar_t__ kstrtou32 (char const*,int,int *) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
sustainable_power_store(struct device *dev, struct device_attribute *devattr,
   const char *buf, size_t count)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);
 u32 sustainable_power;

 if (!tz->tzp)
  return -EIO;

 if (kstrtou32(buf, 10, &sustainable_power))
  return -EINVAL;

 tz->tzp->sustainable_power = sustainable_power;

 return count;
}
