
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfio_pci_device {int err_trigger; } ;


 int EINVAL ;
 unsigned int VFIO_PCI_ERR_IRQ_INDEX ;
 int vfio_pci_set_ctx_trigger_single (int *,unsigned int,int ,void*) ;

__attribute__((used)) static int vfio_pci_set_err_trigger(struct vfio_pci_device *vdev,
        unsigned index, unsigned start,
        unsigned count, uint32_t flags, void *data)
{
 if (index != VFIO_PCI_ERR_IRQ_INDEX || start != 0 || count > 1)
  return -EINVAL;

 return vfio_pci_set_ctx_trigger_single(&vdev->err_trigger,
            count, flags, data);
}
