
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccwgroup_driver {int (* freeze ) (struct ccwgroup_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct ccwgroup_device {scalar_t__ state; TYPE_1__ dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int stub1 (struct ccwgroup_device*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 struct ccwgroup_driver* to_ccwgroupdrv (int ) ;

__attribute__((used)) static int ccwgroup_pm_freeze(struct device *dev)
{
 struct ccwgroup_device *gdev = to_ccwgroupdev(dev);
 struct ccwgroup_driver *gdrv = to_ccwgroupdrv(gdev->dev.driver);

 if (!gdev->dev.driver || gdev->state != CCWGROUP_ONLINE)
  return 0;

 return gdrv->freeze ? gdrv->freeze(gdev) : 0;
}
