
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irb {int dummy; } ;
struct dasd_device {TYPE_1__* discipline; TYPE_2__* cdev; } ;
struct dasd_ccw_req {int intrc; struct dasd_device* startdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* dump_sense ) (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;} ;


 int ENOLINK ;
 int ETIMEDOUT ;
 int dev_err (int *,char*,struct dasd_ccw_req*) ;
 int stub1 (struct dasd_device*,struct dasd_ccw_req*,struct irb*) ;

void
dasd_log_sense(struct dasd_ccw_req *cqr, struct irb *irb)
{
 struct dasd_device *device;

 device = cqr->startdev;
 if (cqr->intrc == -ETIMEDOUT) {
  dev_err(&device->cdev->dev,
   "A timeout error occurred for cqr %p\n", cqr);
  return;
 }
 if (cqr->intrc == -ENOLINK) {
  dev_err(&device->cdev->dev,
   "A transport error occurred for cqr %p\n", cqr);
  return;
 }

 if (device->discipline && device->discipline->dump_sense)
  device->discipline->dump_sense(device, cqr, irb);
}
