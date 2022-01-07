
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int passive; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;


 int THERMAL_TRIPS_NONE ;
 int THERMAL_TRIP_PASSIVE ;

__attribute__((used)) static void update_passive_instance(struct thermal_zone_device *tz,
    enum thermal_trip_type type, int value)
{




 if (type == THERMAL_TRIP_PASSIVE || type == THERMAL_TRIPS_NONE)
  tz->passive += value;
}
