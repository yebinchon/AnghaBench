
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_trip {scalar_t__ type; int temperature; } ;
struct qpnp_tm_chip {int tz_dev; } ;


 int THERMAL_TEMP_INVALID ;
 scalar_t__ THERMAL_TRIP_CRITICAL ;
 int of_thermal_get_ntrips (int ) ;
 struct thermal_trip* of_thermal_get_trip_points (int ) ;
 scalar_t__ of_thermal_is_trip_valid (int ,int) ;

__attribute__((used)) static int qpnp_tm_get_critical_trip_temp(struct qpnp_tm_chip *chip)
{
 int ntrips;
 const struct thermal_trip *trips;
 int i;

 ntrips = of_thermal_get_ntrips(chip->tz_dev);
 if (ntrips <= 0)
  return THERMAL_TEMP_INVALID;

 trips = of_thermal_get_trip_points(chip->tz_dev);
 if (!trips)
  return THERMAL_TEMP_INVALID;

 for (i = 0; i < ntrips; i++) {
  if (of_thermal_is_trip_valid(chip->tz_dev, i) &&
      trips[i].type == THERMAL_TRIP_CRITICAL)
   return trips[i].temperature;
 }

 return THERMAL_TEMP_INVALID;
}
