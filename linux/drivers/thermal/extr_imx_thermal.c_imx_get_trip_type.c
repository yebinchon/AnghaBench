
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;


 int IMX_TRIP_PASSIVE ;
 int THERMAL_TRIP_CRITICAL ;
 int THERMAL_TRIP_PASSIVE ;

__attribute__((used)) static int imx_get_trip_type(struct thermal_zone_device *tz, int trip,
        enum thermal_trip_type *type)
{
 *type = (trip == IMX_TRIP_PASSIVE) ? THERMAL_TRIP_PASSIVE :
          THERMAL_TRIP_CRITICAL;
 return 0;
}
