
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int groups; } ;
struct thermal_zone_device {TYPE_1__ device; scalar_t__ trips; } ;


 int destroy_trip_attrs (struct thermal_zone_device*) ;
 int kfree (int ) ;

void thermal_zone_destroy_device_groups(struct thermal_zone_device *tz)
{
 if (!tz)
  return;

 if (tz->trips)
  destroy_trip_attrs(tz);

 kfree(tz->device.groups);
}
