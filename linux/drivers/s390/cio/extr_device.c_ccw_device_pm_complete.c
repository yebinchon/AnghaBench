
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_device {TYPE_1__* drv; scalar_t__ online; } ;
struct TYPE_2__ {int (* complete ) (struct ccw_device*) ;} ;


 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

__attribute__((used)) static void ccw_device_pm_complete(struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);

 if (cdev->online && cdev->drv && cdev->drv->complete)
  cdev->drv->complete(cdev);
}
