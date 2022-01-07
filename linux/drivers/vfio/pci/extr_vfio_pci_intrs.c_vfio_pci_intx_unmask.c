
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int dummy; } ;


 scalar_t__ vfio_pci_intx_unmask_handler (struct vfio_pci_device*,int *) ;
 int vfio_send_intx_eventfd (struct vfio_pci_device*,int *) ;

void vfio_pci_intx_unmask(struct vfio_pci_device *vdev)
{
 if (vfio_pci_intx_unmask_handler(vdev, ((void*)0)) > 0)
  vfio_send_intx_eventfd(vdev, ((void*)0));
}
