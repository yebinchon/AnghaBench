
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct st_thermal_sensor* devdata; } ;
struct st_thermal_sensor {struct device* dev; } ;
struct device {int dummy; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;


 int EINVAL ;
 int THERMAL_TRIP_CRITICAL ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int st_thermal_get_trip_type(struct thermal_zone_device *th,
    int trip, enum thermal_trip_type *type)
{
 struct st_thermal_sensor *sensor = th->devdata;
 struct device *dev = sensor->dev;

 switch (trip) {
 case 0:
  *type = THERMAL_TRIP_CRITICAL;
  break;
 default:
  dev_err(dev, "invalid trip point\n");
  return -EINVAL;
 }

 return 0;
}
