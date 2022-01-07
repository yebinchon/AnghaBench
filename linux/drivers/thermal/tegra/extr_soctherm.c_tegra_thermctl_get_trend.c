
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {int last_temperature; int temperature; TYPE_1__* ops; } ;
struct tegra_thermctl_zone {struct thermal_zone_device* tz; } ;
typedef enum thermal_trend { ____Placeholder_thermal_trend } thermal_trend ;
struct TYPE_2__ {int (* get_trip_temp ) (struct thermal_zone_device*,int,int*) ;} ;


 int EINVAL ;
 int READ_ONCE (int ) ;
 int THERMAL_TREND_DROPPING ;
 int THERMAL_TREND_RAISING ;
 int THERMAL_TREND_STABLE ;
 int stub1 (struct thermal_zone_device*,int,int*) ;

__attribute__((used)) static int tegra_thermctl_get_trend(void *data, int trip,
        enum thermal_trend *trend)
{
 struct tegra_thermctl_zone *zone = data;
 struct thermal_zone_device *tz = zone->tz;
 int trip_temp, temp, last_temp, ret;

 if (!tz)
  return -EINVAL;

 ret = tz->ops->get_trip_temp(zone->tz, trip, &trip_temp);
 if (ret)
  return ret;

 temp = READ_ONCE(tz->temperature);
 last_temp = READ_ONCE(tz->last_temperature);

 if (temp > trip_temp) {
  if (temp >= last_temp)
   *trend = THERMAL_TREND_RAISING;
  else
   *trend = THERMAL_TREND_STABLE;
 } else if (temp < trip_temp) {
  *trend = THERMAL_TREND_DROPPING;
 } else {
  *trend = THERMAL_TREND_STABLE;
 }

 return 0;
}
