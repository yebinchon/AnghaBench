
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct vfio_pci_device {unsigned int irq_type; unsigned int num_ctx; TYPE_1__* ctx; } ;
typedef int int32_t ;
struct TYPE_2__ {int trigger; } ;


 int EINVAL ;
 int VFIO_IRQ_SET_DATA_BOOL ;
 int VFIO_IRQ_SET_DATA_EVENTFD ;
 int VFIO_IRQ_SET_DATA_NONE ;
 unsigned int VFIO_PCI_MSIX_IRQ_INDEX ;
 int eventfd_signal (int ,int) ;
 scalar_t__ irq_is (struct vfio_pci_device*,unsigned int) ;
 scalar_t__ is_irq_none (struct vfio_pci_device*) ;
 int vfio_msi_disable (struct vfio_pci_device*,int) ;
 int vfio_msi_enable (struct vfio_pci_device*,unsigned int,int) ;
 int vfio_msi_set_block (struct vfio_pci_device*,unsigned int,unsigned int,int *,int) ;

__attribute__((used)) static int vfio_pci_set_msi_trigger(struct vfio_pci_device *vdev,
        unsigned index, unsigned start,
        unsigned count, uint32_t flags, void *data)
{
 int i;
 bool msix = (index == VFIO_PCI_MSIX_IRQ_INDEX) ? 1 : 0;

 if (irq_is(vdev, index) && !count && (flags & VFIO_IRQ_SET_DATA_NONE)) {
  vfio_msi_disable(vdev, msix);
  return 0;
 }

 if (!(irq_is(vdev, index) || is_irq_none(vdev)))
  return -EINVAL;

 if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
  int32_t *fds = data;
  int ret;

  if (vdev->irq_type == index)
   return vfio_msi_set_block(vdev, start, count,
        fds, msix);

  ret = vfio_msi_enable(vdev, start + count, msix);
  if (ret)
   return ret;

  ret = vfio_msi_set_block(vdev, start, count, fds, msix);
  if (ret)
   vfio_msi_disable(vdev, msix);

  return ret;
 }

 if (!irq_is(vdev, index) || start + count > vdev->num_ctx)
  return -EINVAL;

 for (i = start; i < start + count; i++) {
  if (!vdev->ctx[i].trigger)
   continue;
  if (flags & VFIO_IRQ_SET_DATA_NONE) {
   eventfd_signal(vdev->ctx[i].trigger, 1);
  } else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
   uint8_t *bools = data;
   if (bools[i - start])
    eventfd_signal(vdev->ctx[i].trigger, 1);
  }
 }
 return 0;
}
