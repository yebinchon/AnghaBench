
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;


 int __dasd_cancel_req (struct dasd_ccw_req*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int dasd_cancel_req(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device = cqr->startdev;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 rc = __dasd_cancel_req(cqr);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 return rc;
}
