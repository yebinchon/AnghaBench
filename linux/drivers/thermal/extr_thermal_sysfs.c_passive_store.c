
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int forced_passive; int passive_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int sscanf (char const*,char*,int*) ;
 int thermal_zone_device_rebind_exception (struct thermal_zone_device*,char*,int) ;
 int thermal_zone_device_unbind_exception (struct thermal_zone_device*,char*,int) ;
 int thermal_zone_device_update (struct thermal_zone_device*,int ) ;
 struct thermal_zone_device* to_thermal_zone (struct device*) ;

__attribute__((used)) static ssize_t
passive_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct thermal_zone_device *tz = to_thermal_zone(dev);
 int state;

 if (sscanf(buf, "%d\n", &state) != 1)
  return -EINVAL;




 if (state && state < 1000)
  return -EINVAL;

 if (state && !tz->forced_passive) {
  if (!tz->passive_delay)
   tz->passive_delay = 1000;
  thermal_zone_device_rebind_exception(tz, "Processor",
           sizeof("Processor"));
 } else if (!state && tz->forced_passive) {
  tz->passive_delay = 0;
  thermal_zone_device_unbind_exception(tz, "Processor",
           sizeof("Processor"));
 }

 tz->forced_passive = state;

 thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);

 return count;
}
