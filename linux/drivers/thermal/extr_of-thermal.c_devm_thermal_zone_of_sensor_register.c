
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_of_device_ops {int dummy; } ;
struct thermal_zone_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct thermal_zone_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int devm_thermal_zone_of_sensor_release ;
 int devres_add (struct device*,struct thermal_zone_device**) ;
 struct thermal_zone_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct thermal_zone_device**) ;
 struct thermal_zone_device* thermal_zone_of_sensor_register (struct device*,int,void*,struct thermal_zone_of_device_ops const*) ;

struct thermal_zone_device *devm_thermal_zone_of_sensor_register(
 struct device *dev, int sensor_id,
 void *data, const struct thermal_zone_of_device_ops *ops)
{
 struct thermal_zone_device **ptr, *tzd;

 ptr = devres_alloc(devm_thermal_zone_of_sensor_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 tzd = thermal_zone_of_sensor_register(dev, sensor_id, data, ops);
 if (IS_ERR(tzd)) {
  devres_free(ptr);
  return tzd;
 }

 *ptr = tzd;
 devres_add(dev, ptr);

 return tzd;
}
