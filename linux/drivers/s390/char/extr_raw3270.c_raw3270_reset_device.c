
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {int cdev; } ;


 int __raw3270_reset_device (struct raw3270*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int
raw3270_reset_device(struct raw3270 *rp)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(get_ccwdev_lock(rp->cdev), flags);
 rc = __raw3270_reset_device(rp);
 spin_unlock_irqrestore(get_ccwdev_lock(rp->cdev), flags);
 return rc;
}
