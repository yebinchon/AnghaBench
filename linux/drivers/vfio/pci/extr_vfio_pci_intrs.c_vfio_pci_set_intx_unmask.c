
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct vfio_pci_device {TYPE_1__* ctx; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int unmask; } ;


 int EINVAL ;
 int VFIO_IRQ_SET_DATA_BOOL ;
 int VFIO_IRQ_SET_DATA_EVENTFD ;
 int VFIO_IRQ_SET_DATA_NONE ;
 int is_intx (struct vfio_pci_device*) ;
 int vfio_pci_intx_unmask (struct vfio_pci_device*) ;
 int vfio_pci_intx_unmask_handler ;
 int vfio_send_intx_eventfd ;
 int vfio_virqfd_disable (int *) ;
 int vfio_virqfd_enable (void*,int ,int ,int *,int *,scalar_t__) ;

__attribute__((used)) static int vfio_pci_set_intx_unmask(struct vfio_pci_device *vdev,
        unsigned index, unsigned start,
        unsigned count, uint32_t flags, void *data)
{
 if (!is_intx(vdev) || start != 0 || count != 1)
  return -EINVAL;

 if (flags & VFIO_IRQ_SET_DATA_NONE) {
  vfio_pci_intx_unmask(vdev);
 } else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
  uint8_t unmask = *(uint8_t *)data;
  if (unmask)
   vfio_pci_intx_unmask(vdev);
 } else if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
  int32_t fd = *(int32_t *)data;
  if (fd >= 0)
   return vfio_virqfd_enable((void *) vdev,
        vfio_pci_intx_unmask_handler,
        vfio_send_intx_eventfd, ((void*)0),
        &vdev->ctx[0].unmask, fd);

  vfio_virqfd_disable(&vdev->ctx[0].unmask);
 }

 return 0;
}
