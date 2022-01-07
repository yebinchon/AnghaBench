
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {scalar_t__ tape_state; int cdev; TYPE_1__* discipline; } ;
struct TYPE_2__ {int owner; } ;


 int DBF_EVENT (int,char*) ;
 int EBUSY ;
 int ENODEV ;
 scalar_t__ TS_BLKUSE ;
 scalar_t__ TS_IN_USE ;
 scalar_t__ TS_NOT_OPER ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int tape_state_set (struct tape_device*,scalar_t__) ;
 int try_module_get (int ) ;

int
tape_open(struct tape_device *device)
{
 int rc;

 spin_lock_irq(get_ccwdev_lock(device->cdev));
 if (device->tape_state == TS_NOT_OPER) {
  DBF_EVENT(6, "TAPE:nodev\n");
  rc = -ENODEV;
 } else if (device->tape_state == TS_IN_USE) {
  DBF_EVENT(6, "TAPE:dbusy\n");
  rc = -EBUSY;
 } else if (device->tape_state == TS_BLKUSE) {
  DBF_EVENT(6, "TAPE:dbusy\n");
  rc = -EBUSY;
 } else if (device->discipline != ((void*)0) &&
     !try_module_get(device->discipline->owner)) {
  DBF_EVENT(6, "TAPE:nodisc\n");
  rc = -ENODEV;
 } else {
  tape_state_set(device, TS_IN_USE);
  rc = 0;
 }
 spin_unlock_irq(get_ccwdev_lock(device->cdev));
 return rc;
}
