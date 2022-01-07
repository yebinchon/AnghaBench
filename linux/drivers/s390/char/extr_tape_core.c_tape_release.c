
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {scalar_t__ tape_state; int cdev; TYPE_1__* discipline; } ;
struct TYPE_2__ {int owner; } ;


 scalar_t__ TS_IN_USE ;
 int TS_UNUSED ;
 int get_ccwdev_lock (int ) ;
 int module_put (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int tape_state_set (struct tape_device*,int ) ;

int
tape_release(struct tape_device *device)
{
 spin_lock_irq(get_ccwdev_lock(device->cdev));
 if (device->tape_state == TS_IN_USE)
  tape_state_set(device, TS_UNUSED);
 module_put(device->discipline->owner);
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 return 0;
}
