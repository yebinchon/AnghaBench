
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int type; int device; } ;
struct thermal_cooling_device {int type; } ;


 int IMX_TRIP_PASSIVE ;
 int THERMAL_NO_LIMIT ;
 int THERMAL_WEIGHT_DEFAULT ;
 int dev_err (int *,char*,int ,int ,int) ;
 int thermal_zone_bind_cooling_device (struct thermal_zone_device*,int ,struct thermal_cooling_device*,int ,int ,int ) ;

__attribute__((used)) static int imx_bind(struct thermal_zone_device *tz,
      struct thermal_cooling_device *cdev)
{
 int ret;

 ret = thermal_zone_bind_cooling_device(tz, IMX_TRIP_PASSIVE, cdev,
            THERMAL_NO_LIMIT,
            THERMAL_NO_LIMIT,
            THERMAL_WEIGHT_DEFAULT);
 if (ret) {
  dev_err(&tz->device,
   "binding zone %s with cdev %s failed:%d\n",
   tz->type, cdev->type, ret);
  return ret;
 }

 return 0;
}
