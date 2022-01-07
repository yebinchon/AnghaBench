
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_of_device_ops {scalar_t__ set_emul_temp; scalar_t__ set_trips; } ;
struct thermal_zone_device {int lock; TYPE_1__* ops; struct __thermal_zone* devdata; } ;
struct device_node {int name; } ;
struct __thermal_zone {void* sensor_data; struct thermal_zone_of_device_ops const* ops; } ;
struct TYPE_2__ {int set_emul_temp; int set_trips; int get_trend; int get_temp; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct thermal_zone_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_thermal_get_temp ;
 int of_thermal_get_trend ;
 int of_thermal_set_emul_temp ;
 int of_thermal_set_trips ;
 struct thermal_zone_device* thermal_zone_get_zone_by_name (int ) ;

__attribute__((used)) static struct thermal_zone_device *
thermal_zone_of_add_sensor(struct device_node *zone,
      struct device_node *sensor, void *data,
      const struct thermal_zone_of_device_ops *ops)
{
 struct thermal_zone_device *tzd;
 struct __thermal_zone *tz;

 tzd = thermal_zone_get_zone_by_name(zone->name);
 if (IS_ERR(tzd))
  return ERR_PTR(-EPROBE_DEFER);

 tz = tzd->devdata;

 if (!ops)
  return ERR_PTR(-EINVAL);

 mutex_lock(&tzd->lock);
 tz->ops = ops;
 tz->sensor_data = data;

 tzd->ops->get_temp = of_thermal_get_temp;
 tzd->ops->get_trend = of_thermal_get_trend;





 if (ops->set_trips)
  tzd->ops->set_trips = of_thermal_set_trips;

 if (ops->set_emul_temp)
  tzd->ops->set_emul_temp = of_thermal_set_emul_temp;

 mutex_unlock(&tzd->lock);

 return tzd;
}
