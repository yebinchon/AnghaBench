
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_eckd_private {scalar_t__ fcx_max_data; } ;
struct dasd_device {TYPE_1__* cdev; struct dasd_eckd_private* private; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;

__attribute__((used)) static void dasd_eckd_disable_hpf_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;

 dev_err(&device->cdev->dev,
  "High Performance FICON disabled\n");
 private->fcx_max_data = 0;
}
