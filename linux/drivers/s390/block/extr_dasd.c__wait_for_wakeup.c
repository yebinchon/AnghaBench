
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;
struct dasd_ccw_req {scalar_t__ callback_data; struct dasd_device* startdev; } ;


 scalar_t__ DASD_SLEEPON_END_TAG ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static inline int _wait_for_wakeup(struct dasd_ccw_req *cqr)
{
 struct dasd_device *device;
 int rc;

 device = cqr->startdev;
 spin_lock_irq(get_ccwdev_lock(device->cdev));
 rc = (cqr->callback_data == DASD_SLEEPON_END_TAG);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 return rc;
}
