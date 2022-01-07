
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int lock; int passive_delay; int polling_delay; struct __thermal_zone* devdata; } ;
struct __thermal_zone {int mode; int passive_delay; int polling_delay; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;


 int THERMAL_DEVICE_ENABLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int thermal_zone_device_update (struct thermal_zone_device*,int ) ;

__attribute__((used)) static int of_thermal_set_mode(struct thermal_zone_device *tz,
          enum thermal_device_mode mode)
{
 struct __thermal_zone *data = tz->devdata;

 mutex_lock(&tz->lock);

 if (mode == THERMAL_DEVICE_ENABLED) {
  tz->polling_delay = data->polling_delay;
  tz->passive_delay = data->passive_delay;
 } else {
  tz->polling_delay = 0;
  tz->passive_delay = 0;
 }

 mutex_unlock(&tz->lock);

 data->mode = mode;
 thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);

 return 0;
}
