
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_ap_queue {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vfio_ap_drv; } ;
struct TYPE_3__ {int driver; } ;


 struct vfio_ap_queue* dev_get_drvdata (struct device*) ;
 struct device* driver_find_device (int *,int *,int*,int ) ;
 int match_apqn ;
 TYPE_2__* matrix_dev ;
 int put_device (struct device*) ;
 int vfio_ap_irq_disable (struct vfio_ap_queue*) ;

__attribute__((used)) static void vfio_ap_irq_disable_apqn(int apqn)
{
 struct device *dev;
 struct vfio_ap_queue *q;

 dev = driver_find_device(&matrix_dev->vfio_ap_drv->driver, ((void*)0),
     &apqn, match_apqn);
 if (dev) {
  q = dev_get_drvdata(dev);
  vfio_ap_irq_disable(q);
  put_device(dev);
 }
}
