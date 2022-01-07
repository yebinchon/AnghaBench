
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct __thermal_zone {int ntrips; } ;



bool of_thermal_is_trip_valid(struct thermal_zone_device *tz, int trip)
{
 struct __thermal_zone *data = tz->devdata;

 if (!data || trip >= data->ntrips || trip < 0)
  return 0;

 return 1;
}
