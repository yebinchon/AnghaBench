
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int type; int device; } ;
struct thermal_cooling_device {int type; } ;


 int IMX_TRIP_PASSIVE ;
 int dev_err (int *,char*,int ,int ,int) ;
 int thermal_zone_unbind_cooling_device (struct thermal_zone_device*,int ,struct thermal_cooling_device*) ;

__attribute__((used)) static int imx_unbind(struct thermal_zone_device *tz,
        struct thermal_cooling_device *cdev)
{
 int ret;

 ret = thermal_zone_unbind_cooling_device(tz, IMX_TRIP_PASSIVE, cdev);
 if (ret) {
  dev_err(&tz->device,
   "unbinding zone %s with cdev %s failed:%d\n",
   tz->type, cdev->type, ret);
  return ret;
 }

 return 0;
}
