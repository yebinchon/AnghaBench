
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct raw3270 {int cdev; TYPE_2__* view; int flags; } ;
struct ccw_device {int dev; } ;
struct TYPE_4__ {TYPE_1__* fn; } ;
struct TYPE_3__ {int (* activate ) (TYPE_2__*) ;} ;


 int RAW3270_FLAGS_FROZEN ;
 int clear_bit (int ,int *) ;
 struct raw3270* dev_get_drvdata (int *) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int raw3270_pm_start(struct ccw_device *cdev)
{
 struct raw3270 *rp;
 unsigned long flags;

 rp = dev_get_drvdata(&cdev->dev);
 if (!rp)
  return 0;
 spin_lock_irqsave(get_ccwdev_lock(rp->cdev), flags);
 clear_bit(RAW3270_FLAGS_FROZEN, &rp->flags);
 if (rp->view && rp->view->fn->activate)
  rp->view->fn->activate(rp->view);
 spin_unlock_irqrestore(get_ccwdev_lock(rp->cdev), flags);
 return 0;
}
