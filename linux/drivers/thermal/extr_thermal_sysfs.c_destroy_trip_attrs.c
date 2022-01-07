
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int attrs; } ;
struct thermal_zone_device {TYPE_2__ trips_attribute_group; int trip_hyst_attrs; TYPE_1__* ops; int trip_temp_attrs; int trip_type_attrs; } ;
struct TYPE_3__ {scalar_t__ get_trip_hyst; } ;


 int kfree (int ) ;

__attribute__((used)) static void destroy_trip_attrs(struct thermal_zone_device *tz)
{
 if (!tz)
  return;

 kfree(tz->trip_type_attrs);
 kfree(tz->trip_temp_attrs);
 if (tz->ops->get_trip_hyst)
  kfree(tz->trip_hyst_attrs);
 kfree(tz->trips_attribute_group.attrs);
}
