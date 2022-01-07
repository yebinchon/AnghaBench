
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct da9062_thermal* devdata; } ;
struct da9062_thermal {int dev; } ;


 int DA9062_MILLI_CELSIUS (int) ;
 int EINVAL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int da9062_thermal_get_trip_temp(struct thermal_zone_device *z,
     int trip,
     int *temp)
{
 struct da9062_thermal *thermal = z->devdata;

 switch (trip) {
 case 0:
  *temp = DA9062_MILLI_CELSIUS(125);
  break;
 default:
  dev_err(thermal->dev,
   "Driver does not support more than 1 trip-wire\n");
  return -EINVAL;
 }

 return 0;
}
