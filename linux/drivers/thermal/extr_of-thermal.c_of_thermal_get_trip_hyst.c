
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int ntrips; TYPE_1__* trips; } ;
struct TYPE_2__ {int hysteresis; } ;


 int EDOM ;

__attribute__((used)) static int of_thermal_get_trip_hyst(struct thermal_zone_device *tz, int trip,
        int *hyst)
{
 struct __thermal_zone *data = tz->devdata;

 if (trip >= data->ntrips || trip < 0)
  return -EDOM;

 *hyst = data->trips[trip].hysteresis;

 return 0;
}
