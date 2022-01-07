
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {struct raw3270* dev; } ;
struct raw3270_request {int dummy; } ;
struct raw3270 {int cdev; int flags; struct raw3270_view* view; } ;


 int EACCES ;
 int EBUSY ;
 int RAW3270_FLAGS_FROZEN ;
 int __raw3270_start (struct raw3270*,struct raw3270_view*,struct raw3270_request*) ;
 int get_ccwdev_lock (int ) ;
 int raw3270_state_ready (struct raw3270*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

int
raw3270_start(struct raw3270_view *view, struct raw3270_request *rq)
{
 unsigned long flags;
 struct raw3270 *rp;
 int rc;

 spin_lock_irqsave(get_ccwdev_lock(view->dev->cdev), flags);
 rp = view->dev;
 if (!rp || rp->view != view ||
     test_bit(RAW3270_FLAGS_FROZEN, &rp->flags))
  rc = -EACCES;
 else if (!raw3270_state_ready(rp))
  rc = -EBUSY;
 else
  rc = __raw3270_start(rp, view, rq);
 spin_unlock_irqrestore(get_ccwdev_lock(view->dev->cdev), flags);
 return rc;
}
