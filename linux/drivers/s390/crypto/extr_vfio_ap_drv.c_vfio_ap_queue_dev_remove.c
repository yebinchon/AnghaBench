
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_ap_queue {int apqn; } ;
struct ap_device {int device; } ;
struct TYPE_2__ {int lock; } ;


 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 struct vfio_ap_queue* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct vfio_ap_queue*) ;
 TYPE_1__* matrix_dev ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_ap_irq_disable (struct vfio_ap_queue*) ;
 int vfio_ap_mdev_reset_queue (int,int,int) ;

__attribute__((used)) static void vfio_ap_queue_dev_remove(struct ap_device *apdev)
{
 struct vfio_ap_queue *q;
 int apid, apqi;

 mutex_lock(&matrix_dev->lock);
 q = dev_get_drvdata(&apdev->device);
 dev_set_drvdata(&apdev->device, ((void*)0));
 apid = AP_QID_CARD(q->apqn);
 apqi = AP_QID_QUEUE(q->apqn);
 vfio_ap_mdev_reset_queue(apid, apqi, 1);
 vfio_ap_irq_disable(q);
 kfree(q);
 mutex_unlock(&matrix_dev->lock);
}
