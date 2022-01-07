
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int (* shutdown ) (struct ccw_device*) ;} ;


 int __disable_cmf (struct ccw_device*) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static void ccw_device_shutdown(struct device *dev)
{
 struct ccw_device *cdev;

 cdev = to_ccwdev(dev);
 if (cdev->drv && cdev->drv->shutdown)
  cdev->drv->shutdown(cdev);
 __disable_cmf(cdev);
}
