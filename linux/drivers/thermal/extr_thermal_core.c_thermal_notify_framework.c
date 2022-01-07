
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int handle_thermal_trip (struct thermal_zone_device*,int) ;

void thermal_notify_framework(struct thermal_zone_device *tz, int trip)
{
 handle_thermal_trip(tz, trip);
}
