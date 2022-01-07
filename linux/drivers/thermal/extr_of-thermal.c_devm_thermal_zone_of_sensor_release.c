
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct device {int dummy; } ;


 int thermal_zone_of_sensor_unregister (struct device*,struct thermal_zone_device*) ;

__attribute__((used)) static void devm_thermal_zone_of_sensor_release(struct device *dev, void *res)
{
 thermal_zone_of_sensor_unregister(dev,
       *(struct thermal_zone_device **)res);
}
