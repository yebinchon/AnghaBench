
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct subchannel {int lock; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct ccw_device {TYPE_3__* private; TYPE_2__* drv; int online; TYPE_1__ dev; } ;
struct TYPE_6__ {int * cmb; } ;
struct TYPE_5__ {int (* freeze ) (struct ccw_device*) ;} ;


 int EAGAIN ;
 int ccw_set_cmf (struct ccw_device*,int ) ;
 int cio_disable_subchannel (struct subchannel*) ;
 int dev_fsm_final_state (struct ccw_device*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct subchannel* to_subchannel (int ) ;

__attribute__((used)) static int ccw_device_pm_freeze(struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct subchannel *sch = to_subchannel(cdev->dev.parent);
 int ret, cm_enabled;


 if (!dev_fsm_final_state(cdev))
  return -EAGAIN;
 if (!cdev->online)
  return 0;
 if (cdev->drv && cdev->drv->freeze) {
  ret = cdev->drv->freeze(cdev);
  if (ret)
   return ret;
 }

 spin_lock_irq(sch->lock);
 cm_enabled = cdev->private->cmb != ((void*)0);
 spin_unlock_irq(sch->lock);
 if (cm_enabled) {

  ret = ccw_set_cmf(cdev, 0);
  if (ret)
   return ret;
 }

 spin_lock_irq(sch->lock);
 ret = cio_disable_subchannel(sch);
 spin_unlock_irq(sch->lock);

 return ret;
}
