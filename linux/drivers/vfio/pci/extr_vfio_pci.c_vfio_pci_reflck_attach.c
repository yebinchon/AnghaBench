
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_pci_device {int reflck; TYPE_1__* pdev; } ;
struct TYPE_2__ {int bus; int slot; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_is_root_bus (int ) ;
 int pci_probe_reset_slot (int ) ;
 int reflck_lock ;
 scalar_t__ vfio_pci_for_each_slot_or_bus (TYPE_1__*,int ,int *,int) ;
 int vfio_pci_reflck_alloc () ;
 int vfio_pci_reflck_find ;

__attribute__((used)) static int vfio_pci_reflck_attach(struct vfio_pci_device *vdev)
{
 bool slot = !pci_probe_reset_slot(vdev->pdev->slot);

 mutex_lock(&reflck_lock);

 if (pci_is_root_bus(vdev->pdev->bus) ||
     vfio_pci_for_each_slot_or_bus(vdev->pdev, vfio_pci_reflck_find,
       &vdev->reflck, slot) <= 0)
  vdev->reflck = vfio_pci_reflck_alloc();

 mutex_unlock(&reflck_lock);

 return PTR_ERR_OR_ZERO(vdev->reflck);
}
