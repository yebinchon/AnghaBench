
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int trips; int temperature; TYPE_1__* ops; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int stub1 (struct thermal_zone_device*,int,int*) ;
 int stub2 (struct thermal_zone_device*,int,int*) ;
 int trace_thermal_zone_trip (struct thermal_zone_device*,int,int) ;

__attribute__((used)) static int get_trip_level(struct thermal_zone_device *tz)
{
 int count = 0;
 int trip_temp;
 enum thermal_trip_type trip_type;

 if (tz->trips == 0 || !tz->ops->get_trip_temp)
  return 0;

 for (count = 0; count < tz->trips; count++) {
  tz->ops->get_trip_temp(tz, count, &trip_temp);
  if (tz->temperature < trip_temp)
   break;
 }





 if (count > 0) {
  tz->ops->get_trip_type(tz, count - 1, &trip_type);
  trace_thermal_zone_trip(tz, count - 1, trip_type);
 }

 return count;
}
