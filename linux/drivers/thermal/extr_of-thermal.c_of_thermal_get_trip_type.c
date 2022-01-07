
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int ntrips; TYPE_1__* trips; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int type; } ;


 int EDOM ;

__attribute__((used)) static int of_thermal_get_trip_type(struct thermal_zone_device *tz, int trip,
        enum thermal_trip_type *type)
{
 struct __thermal_zone *data = tz->devdata;

 if (trip >= data->ntrips || trip < 0)
  return -EDOM;

 *type = data->trips[trip].type;

 return 0;
}
