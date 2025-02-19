
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {int dummy; } ;
struct tape_device {int cdev; } ;


 int __tape_cancel_io (struct tape_device*,struct tape_request*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int
tape_cancel_io(struct tape_device *device, struct tape_request *request)
{
 int rc;

 spin_lock_irq(get_ccwdev_lock(device->cdev));
 rc = __tape_cancel_io(device, request);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 return rc;
}
