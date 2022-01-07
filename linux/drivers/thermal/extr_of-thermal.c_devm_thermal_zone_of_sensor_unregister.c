
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_thermal_zone_of_sensor_match ;
 int devm_thermal_zone_of_sensor_release ;
 int devres_release (struct device*,int ,int ,struct thermal_zone_device*) ;

void devm_thermal_zone_of_sensor_unregister(struct device *dev,
         struct thermal_zone_device *tzd)
{
 WARN_ON(devres_release(dev, devm_thermal_zone_of_sensor_release,
          devm_thermal_zone_of_sensor_match, tzd));
}
