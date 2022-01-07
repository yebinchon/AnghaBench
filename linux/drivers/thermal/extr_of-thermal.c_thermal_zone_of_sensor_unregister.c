
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int lock; TYPE_1__* ops; struct __thermal_zone* devdata; } ;
struct device {int dummy; } ;
struct __thermal_zone {int * sensor_data; int * ops; } ;
struct TYPE_2__ {int * set_emul_temp; int * get_trend; int * get_temp; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void thermal_zone_of_sensor_unregister(struct device *dev,
           struct thermal_zone_device *tzd)
{
 struct __thermal_zone *tz;

 if (!dev || !tzd || !tzd->devdata)
  return;

 tz = tzd->devdata;


 if (!tz)
  return;

 mutex_lock(&tzd->lock);
 tzd->ops->get_temp = ((void*)0);
 tzd->ops->get_trend = ((void*)0);
 tzd->ops->set_emul_temp = ((void*)0);

 tz->ops = ((void*)0);
 tz->sensor_data = ((void*)0);
 mutex_unlock(&tzd->lock);
}
