
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* ops; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_2__ {int (* get_trip_type ) (struct thermal_zone_device*,int,int*) ;int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int EINVAL ;
 int THERMAL_TRIP_HOT ;
 int of_thermal_get_ntrips (struct thermal_zone_device*) ;
 int stub1 (struct thermal_zone_device*,int,int*) ;
 int stub2 (struct thermal_zone_device*,int,int*) ;

__attribute__((used)) static int get_hot_temp(struct thermal_zone_device *tz, int *trip, int *temp)
{
 int ntrips, i, ret;
 enum thermal_trip_type type;

 ntrips = of_thermal_get_ntrips(tz);
 if (ntrips <= 0)
  return -EINVAL;

 for (i = 0; i < ntrips; i++) {
  ret = tz->ops->get_trip_type(tz, i, &type);
  if (ret)
   return -EINVAL;
  if (type == THERMAL_TRIP_HOT) {
   ret = tz->ops->get_trip_temp(tz, i, temp);
   if (!ret)
    *trip = i;

   return ret;
  }
 }

 return -EINVAL;
}
