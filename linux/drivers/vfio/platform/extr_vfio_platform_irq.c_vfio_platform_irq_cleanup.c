
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int num_irqs; int irqs; } ;


 int kfree (int ) ;
 int vfio_set_trigger (struct vfio_platform_device*,int,int,int *) ;

void vfio_platform_irq_cleanup(struct vfio_platform_device *vdev)
{
 int i;

 for (i = 0; i < vdev->num_irqs; i++)
  vfio_set_trigger(vdev, i, -1, ((void*)0));

 vdev->num_irqs = 0;
 kfree(vdev->irqs);
}
