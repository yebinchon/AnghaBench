
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccwgroup_driver {int (* prepare ) (struct ccwgroup_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; int onoff; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int EAGAIN ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ccwgroup_device*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (int ) ;

__attribute__((used)) static int ccwgroup_pm_prepare(struct device *dev)
{
 struct ccwgroup_device *gdev = to_ccwgroupdev(dev);
 struct ccwgroup_driver *gdrv = to_ccwgroupdrv(gdev->dev.driver);


 if (atomic_read(&gdev->onoff))
  return -EAGAIN;

 if (!gdev->dev.driver || gdev->state != CCWGROUP_ONLINE)
  return 0;

 return gdrv->prepare ? gdrv->prepare(gdev) : 0;
}
