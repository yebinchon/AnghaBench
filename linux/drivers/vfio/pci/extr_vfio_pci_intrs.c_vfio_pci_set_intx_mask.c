
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct vfio_pci_device {int dummy; } ;


 int EINVAL ;
 int ENOTTY ;
 int VFIO_IRQ_SET_DATA_BOOL ;
 int VFIO_IRQ_SET_DATA_EVENTFD ;
 int VFIO_IRQ_SET_DATA_NONE ;
 int is_intx (struct vfio_pci_device*) ;
 int vfio_pci_intx_mask (struct vfio_pci_device*) ;

__attribute__((used)) static int vfio_pci_set_intx_mask(struct vfio_pci_device *vdev,
      unsigned index, unsigned start,
      unsigned count, uint32_t flags, void *data)
{
 if (!is_intx(vdev) || start != 0 || count != 1)
  return -EINVAL;

 if (flags & VFIO_IRQ_SET_DATA_NONE) {
  vfio_pci_intx_mask(vdev);
 } else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
  uint8_t mask = *(uint8_t *)data;
  if (mask)
   vfio_pci_intx_mask(vdev);
 } else if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
  return -ENOTTY;
 }

 return 0;
}
