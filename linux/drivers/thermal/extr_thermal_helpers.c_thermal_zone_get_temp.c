
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int emul_temperature; int trips; int lock; TYPE_1__* ops; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* get_temp ) (struct thermal_zone_device*,int*) ;int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int CONFIG_THERMAL_EMULATION ;
 int EINVAL ;
 int INT_MAX ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int THERMAL_TRIP_CRITICAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct thermal_zone_device*,int*) ;
 int stub2 (struct thermal_zone_device*,int,int*) ;
 int stub3 (struct thermal_zone_device*,int,int*) ;

int thermal_zone_get_temp(struct thermal_zone_device *tz, int *temp)
{
 int ret = -EINVAL;
 int count;
 int crit_temp = INT_MAX;
 enum thermal_trip_type type;

 if (!tz || IS_ERR(tz) || !tz->ops->get_temp)
  goto exit;

 mutex_lock(&tz->lock);

 ret = tz->ops->get_temp(tz, temp);

 if (IS_ENABLED(CONFIG_THERMAL_EMULATION) && tz->emul_temperature) {
  for (count = 0; count < tz->trips; count++) {
   ret = tz->ops->get_trip_type(tz, count, &type);
   if (!ret && type == THERMAL_TRIP_CRITICAL) {
    ret = tz->ops->get_trip_temp(tz, count,
      &crit_temp);
    break;
   }
  }






  if (!ret && *temp < crit_temp)
   *temp = tz->emul_temperature;
 }

 mutex_unlock(&tz->lock);
exit:
 return ret;
}
