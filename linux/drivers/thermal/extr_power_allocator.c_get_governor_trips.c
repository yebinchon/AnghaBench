
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int trips; int device; TYPE_1__* ops; } ;
struct power_allocator_params {int trip_switch_on; int trip_max_desired_temperature; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;} ;


 int INVALID_TRIP ;
 int THERMAL_TRIP_ACTIVE ;
 int THERMAL_TRIP_PASSIVE ;
 int dev_warn (int *,char*,int,int) ;
 int stub1 (struct thermal_zone_device*,int,int*) ;

__attribute__((used)) static void get_governor_trips(struct thermal_zone_device *tz,
          struct power_allocator_params *params)
{
 int i, last_active, last_passive;
 bool found_first_passive;

 found_first_passive = 0;
 last_active = INVALID_TRIP;
 last_passive = INVALID_TRIP;

 for (i = 0; i < tz->trips; i++) {
  enum thermal_trip_type type;
  int ret;

  ret = tz->ops->get_trip_type(tz, i, &type);
  if (ret) {
   dev_warn(&tz->device,
     "Failed to get trip point %d type: %d\n", i,
     ret);
   continue;
  }

  if (type == THERMAL_TRIP_PASSIVE) {
   if (!found_first_passive) {
    params->trip_switch_on = i;
    found_first_passive = 1;
   } else {
    last_passive = i;
   }
  } else if (type == THERMAL_TRIP_ACTIVE) {
   last_active = i;
  } else {
   break;
  }
 }

 if (last_passive != INVALID_TRIP) {
  params->trip_max_desired_temperature = last_passive;
 } else if (found_first_passive) {
  params->trip_max_desired_temperature = params->trip_switch_on;
  params->trip_switch_on = INVALID_TRIP;
 } else {
  params->trip_switch_on = INVALID_TRIP;
  params->trip_max_desired_temperature = last_active;
 }
}
