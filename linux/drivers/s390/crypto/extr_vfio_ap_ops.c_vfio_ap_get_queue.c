
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfio_ap_queue {struct ap_matrix_mdev* matrix_mdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int aqm; int apm; } ;
struct ap_matrix_mdev {TYPE_1__ matrix; } ;
struct TYPE_6__ {TYPE_2__* vfio_ap_drv; } ;
struct TYPE_5__ {int driver; } ;


 int AP_QID_CARD (int) ;
 int AP_QID_QUEUE (int) ;
 struct vfio_ap_queue* dev_get_drvdata (struct device*) ;
 struct device* driver_find_device (int *,int *,int*,int ) ;
 int match_apqn ;
 TYPE_3__* matrix_dev ;
 int put_device (struct device*) ;
 int test_bit_inv (int ,int ) ;

__attribute__((used)) static struct vfio_ap_queue *vfio_ap_get_queue(
     struct ap_matrix_mdev *matrix_mdev,
     int apqn)
{
 struct vfio_ap_queue *q;
 struct device *dev;

 if (!test_bit_inv(AP_QID_CARD(apqn), matrix_mdev->matrix.apm))
  return ((void*)0);
 if (!test_bit_inv(AP_QID_QUEUE(apqn), matrix_mdev->matrix.aqm))
  return ((void*)0);

 dev = driver_find_device(&matrix_dev->vfio_ap_drv->driver, ((void*)0),
     &apqn, match_apqn);
 if (!dev)
  return ((void*)0);
 q = dev_get_drvdata(dev);
 q->matrix_mdev = matrix_mdev;
 put_device(dev);

 return q;
}
