
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct thermal_trip {int dummy; } ;
struct __thermal_zone {struct thermal_trip const* trips; } ;



const struct thermal_trip *
of_thermal_get_trip_points(struct thermal_zone_device *tz)
{
 struct __thermal_zone *data = tz->devdata;

 if (!data)
  return ((void*)0);

 return data->trips;
}
