
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void thermal_zone_device ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_thermal_zone_of_sensor_match(struct device *dev, void *res,
          void *data)
{
 struct thermal_zone_device **r = res;

 if (WARN_ON(!r || !*r))
  return 0;

 return *r == data;
}
