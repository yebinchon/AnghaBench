
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int temperature; int device; TYPE_1__* ops; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* notify ) (struct thermal_zone_device*,int,int) ;int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int THERMAL_TRIP_CRITICAL ;
 int dev_emerg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int orderly_poweroff (int) ;
 int power_off_triggered ;
 int poweroff_lock ;
 int stub1 (struct thermal_zone_device*,int,int*) ;
 int stub2 (struct thermal_zone_device*,int,int) ;
 int thermal_emergency_poweroff () ;
 int trace_thermal_zone_trip (struct thermal_zone_device*,int,int) ;

__attribute__((used)) static void handle_critical_trips(struct thermal_zone_device *tz,
      int trip, enum thermal_trip_type trip_type)
{
 int trip_temp;

 tz->ops->get_trip_temp(tz, trip, &trip_temp);


 if (trip_temp <= 0 || tz->temperature < trip_temp)
  return;

 trace_thermal_zone_trip(tz, trip, trip_type);

 if (tz->ops->notify)
  tz->ops->notify(tz, trip, trip_type);

 if (trip_type == THERMAL_TRIP_CRITICAL) {
  dev_emerg(&tz->device,
     "critical temperature reached (%d C), shutting down\n",
     tz->temperature / 1000);
  mutex_lock(&poweroff_lock);
  if (!power_off_triggered) {




   thermal_emergency_poweroff();
   orderly_poweroff(1);
   power_off_triggered = 1;
  }
  mutex_unlock(&poweroff_lock);
 }
}
