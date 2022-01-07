
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {scalar_t__ temperature; scalar_t__ last_temperature; TYPE_1__* ops; scalar_t__ emul_temperature; } ;
typedef enum thermal_trend { ____Placeholder_thermal_trend } thermal_trend ;
struct TYPE_2__ {scalar_t__ (* get_trend ) (struct thermal_zone_device*,int,int*) ;} ;


 int THERMAL_TREND_DROPPING ;
 int THERMAL_TREND_RAISING ;
 int THERMAL_TREND_STABLE ;
 scalar_t__ stub1 (struct thermal_zone_device*,int,int*) ;

int get_tz_trend(struct thermal_zone_device *tz, int trip)
{
 enum thermal_trend trend;

 if (tz->emul_temperature || !tz->ops->get_trend ||
     tz->ops->get_trend(tz, trip, &trend)) {
  if (tz->temperature > tz->last_temperature)
   trend = THERMAL_TREND_RAISING;
  else if (tz->temperature < tz->last_temperature)
   trend = THERMAL_TREND_DROPPING;
  else
   trend = THERMAL_TREND_STABLE;
 }

 return trend;
}
