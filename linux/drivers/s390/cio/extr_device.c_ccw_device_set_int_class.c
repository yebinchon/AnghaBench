
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccw_driver {scalar_t__ int_class; } ;
struct ccw_device {TYPE_1__* private; struct ccw_driver* drv; } ;
struct TYPE_2__ {scalar_t__ int_class; } ;


 scalar_t__ IRQIO_CIO ;

__attribute__((used)) static void ccw_device_set_int_class(struct ccw_device *cdev)
{
 struct ccw_driver *cdrv = cdev->drv;



 if (cdrv->int_class != 0)
  cdev->private->int_class = cdrv->int_class;
 else
  cdev->private->int_class = IRQIO_CIO;
}
