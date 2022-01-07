
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct attribute_group const** groups; } ;
struct attribute_group {int dummy; } ;
struct thermal_zone_device {TYPE_1__ device; struct attribute_group trips_attribute_group; scalar_t__ trips; } ;


 int ARRAY_SIZE (struct attribute_group**) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int create_trip_attrs (struct thermal_zone_device*,int) ;
 struct attribute_group** kcalloc (int,int,int ) ;
 int kfree (struct attribute_group const**) ;
 struct attribute_group** thermal_zone_attribute_groups ;

int thermal_zone_create_device_groups(struct thermal_zone_device *tz,
          int mask)
{
 const struct attribute_group **groups;
 int i, size, result;


 size = ARRAY_SIZE(thermal_zone_attribute_groups) + 2;

 groups = kcalloc(size, sizeof(*groups), GFP_KERNEL);
 if (!groups)
  return -ENOMEM;

 for (i = 0; i < size - 2; i++)
  groups[i] = thermal_zone_attribute_groups[i];

 if (tz->trips) {
  result = create_trip_attrs(tz, mask);
  if (result) {
   kfree(groups);

   return result;
  }

  groups[size - 2] = &tz->trips_attribute_group;
 }

 tz->device.groups = groups;

 return 0;
}
