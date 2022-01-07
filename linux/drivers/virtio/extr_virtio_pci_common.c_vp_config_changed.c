
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_pci_device {int vdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int virtio_config_changed (int *) ;

__attribute__((used)) static irqreturn_t vp_config_changed(int irq, void *opaque)
{
 struct virtio_pci_device *vp_dev = opaque;

 virtio_config_changed(&vp_dev->vdev);
 return IRQ_HANDLED;
}
