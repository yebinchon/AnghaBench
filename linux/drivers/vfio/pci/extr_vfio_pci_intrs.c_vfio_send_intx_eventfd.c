
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {TYPE_1__* ctx; int virq_disabled; } ;
struct TYPE_2__ {int trigger; } ;


 int eventfd_signal (int ,int) ;
 scalar_t__ is_intx (struct vfio_pci_device*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void vfio_send_intx_eventfd(void *opaque, void *unused)
{
 struct vfio_pci_device *vdev = opaque;

 if (likely(is_intx(vdev) && !vdev->virq_disabled))
  eventfd_signal(vdev->ctx[0].trigger, 1);
}
