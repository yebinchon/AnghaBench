
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int type; int device; } ;
struct thermal_cooling_device {int type; } ;


 int dev_err (int *,char*,int ,int ,int) ;

__attribute__((used)) static inline
void print_bind_err_msg(struct thermal_zone_device *tz,
   struct thermal_cooling_device *cdev, int ret)
{
 dev_err(&tz->device, "binding zone %s with cdev %s failed:%d\n",
  tz->type, cdev->type, ret);
}
