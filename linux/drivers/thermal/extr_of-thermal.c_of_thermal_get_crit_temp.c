
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int ntrips; TYPE_1__* trips; } ;
struct TYPE_2__ {scalar_t__ type; int temperature; } ;


 int EINVAL ;
 scalar_t__ THERMAL_TRIP_CRITICAL ;

__attribute__((used)) static int of_thermal_get_crit_temp(struct thermal_zone_device *tz,
        int *temp)
{
 struct __thermal_zone *data = tz->devdata;
 int i;

 for (i = 0; i < data->ntrips; i++)
  if (data->trips[i].type == THERMAL_TRIP_CRITICAL) {
   *temp = data->trips[i].temperature;
   return 0;
  }

 return -EINVAL;
}
