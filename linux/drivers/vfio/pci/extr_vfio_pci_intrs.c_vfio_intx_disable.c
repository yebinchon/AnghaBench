
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {TYPE_1__* ctx; scalar_t__ num_ctx; int irq_type; } ;
struct TYPE_2__ {int mask; int unmask; } ;


 int VFIO_PCI_NUM_IRQS ;
 int kfree (TYPE_1__*) ;
 int vfio_intx_set_signal (struct vfio_pci_device*,int) ;
 int vfio_virqfd_disable (int *) ;

__attribute__((used)) static void vfio_intx_disable(struct vfio_pci_device *vdev)
{
 vfio_virqfd_disable(&vdev->ctx[0].unmask);
 vfio_virqfd_disable(&vdev->ctx[0].mask);
 vfio_intx_set_signal(vdev, -1);
 vdev->irq_type = VFIO_PCI_NUM_IRQS;
 vdev->num_ctx = 0;
 kfree(vdev->ctx);
}
