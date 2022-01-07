
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irb {int dummy; } ;
struct dasd_device {scalar_t__ state; scalar_t__ target; TYPE_1__* discipline; int flags; } ;
struct ccw_device {int dummy; } ;
typedef enum uc_todo { ____Placeholder_uc_todo } uc_todo ;
struct TYPE_2__ {int (* check_for_device_change ) (struct dasd_device*,int *,struct irb*) ;int (* dump_sense_dbf ) (struct dasd_device*,struct irb*,char*) ;} ;


 int DASD_FLAG_OFFLINE ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int UC_TODO_RETRY ;
 struct dasd_device* dasd_device_from_cdev_locked (struct ccw_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int stub1 (struct dasd_device*,struct irb*,char*) ;
 int stub2 (struct dasd_device*,int *,struct irb*) ;
 scalar_t__ test_bit (int ,int *) ;

enum uc_todo dasd_generic_uc_handler(struct ccw_device *cdev, struct irb *irb)
{
 struct dasd_device *device;

 device = dasd_device_from_cdev_locked(cdev);

 if (IS_ERR(device))
  goto out;
 if (test_bit(DASD_FLAG_OFFLINE, &device->flags) ||
    device->state != device->target ||
    !device->discipline->check_for_device_change){
  dasd_put_device(device);
  goto out;
 }
 if (device->discipline->dump_sense_dbf)
  device->discipline->dump_sense_dbf(device, irb, "uc");
 device->discipline->check_for_device_change(device, ((void*)0), irb);
 dasd_put_device(device);
out:
 return UC_TODO_RETRY;
}
