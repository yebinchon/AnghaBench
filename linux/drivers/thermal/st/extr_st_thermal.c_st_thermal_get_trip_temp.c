
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {struct st_thermal_sensor* devdata; } ;
struct st_thermal_sensor {TYPE_1__* cdata; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int crit_temp; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 int mcelsius (int ) ;

__attribute__((used)) static int st_thermal_get_trip_temp(struct thermal_zone_device *th,
        int trip, int *temp)
{
 struct st_thermal_sensor *sensor = th->devdata;
 struct device *dev = sensor->dev;

 switch (trip) {
 case 0:
  *temp = mcelsius(sensor->cdata->crit_temp);
  break;
 default:
  dev_err(dev, "Invalid trip point\n");
  return -EINVAL;
 }

 return 0;
}
