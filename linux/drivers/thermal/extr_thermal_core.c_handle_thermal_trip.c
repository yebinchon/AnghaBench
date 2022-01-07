
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* ops; int trips_disabled; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;


 int THERMAL_TRIP_CRITICAL ;
 int THERMAL_TRIP_HOT ;
 int handle_critical_trips (struct thermal_zone_device*,int,int) ;
 int handle_non_critical_trips (struct thermal_zone_device*,int) ;
 int monitor_thermal_zone (struct thermal_zone_device*) ;
 int stub1 (struct thermal_zone_device*,int,int*) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void handle_thermal_trip(struct thermal_zone_device *tz, int trip)
{
 enum thermal_trip_type type;


 if (test_bit(trip, &tz->trips_disabled))
  return;

 tz->ops->get_trip_type(tz, trip, &type);

 if (type == THERMAL_TRIP_CRITICAL || type == THERMAL_TRIP_HOT)
  handle_critical_trips(tz, trip, type);
 else
  handle_non_critical_trips(tz, trip);




 monitor_thermal_zone(tz);
}
