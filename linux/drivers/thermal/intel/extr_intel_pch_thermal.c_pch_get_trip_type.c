
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct pch_thermal_device* devdata; } ;
struct pch_thermal_device {int crt_trip_id; int hot_trip_id; int psv_trip_id; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;


 int EINVAL ;
 int THERMAL_TRIP_CRITICAL ;
 int THERMAL_TRIP_HOT ;
 int THERMAL_TRIP_PASSIVE ;

__attribute__((used)) static int pch_get_trip_type(struct thermal_zone_device *tzd, int trip,
        enum thermal_trip_type *type)
{
 struct pch_thermal_device *ptd = tzd->devdata;

 if (ptd->crt_trip_id == trip)
  *type = THERMAL_TRIP_CRITICAL;
 else if (ptd->hot_trip_id == trip)
  *type = THERMAL_TRIP_HOT;
 else if (ptd->psv_trip_id == trip)
  *type = THERMAL_TRIP_PASSIVE;
 else
  return -EINVAL;

 return 0;
}
