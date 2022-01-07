
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_pci_device {struct vfio_pci_device* pm_save; int ioeventfds_lock; struct vfio_pci_device* region; int reflck; } ;
struct TYPE_3__ {int iommu_group; } ;
struct pci_dev {TYPE_1__ dev; } ;


 int PCI_D0 ;
 int VGA_RSRC_LEGACY_IO ;
 int VGA_RSRC_LEGACY_MEM ;
 int VGA_RSRC_NORMAL_IO ;
 int VGA_RSRC_NORMAL_MEM ;
 int disable_idle_d3 ;
 int kfree (struct vfio_pci_device*) ;
 int mutex_destroy (int *) ;
 struct vfio_pci_device* vfio_del_group_dev (TYPE_1__*) ;
 int vfio_iommu_group_put (int ,TYPE_1__*) ;
 scalar_t__ vfio_pci_is_vga (struct pci_dev*) ;
 int vfio_pci_reflck_put (int ) ;
 int vfio_pci_set_power_state (struct vfio_pci_device*,int ) ;
 int vga_client_register (struct pci_dev*,int *,int *,int *) ;
 int vga_set_legacy_decoding (struct pci_dev*,int) ;

__attribute__((used)) static void vfio_pci_remove(struct pci_dev *pdev)
{
 struct vfio_pci_device *vdev;

 vdev = vfio_del_group_dev(&pdev->dev);
 if (!vdev)
  return;

 vfio_pci_reflck_put(vdev->reflck);

 vfio_iommu_group_put(pdev->dev.iommu_group, &pdev->dev);
 kfree(vdev->region);
 mutex_destroy(&vdev->ioeventfds_lock);

 if (!disable_idle_d3)
  vfio_pci_set_power_state(vdev, PCI_D0);

 kfree(vdev->pm_save);
 kfree(vdev);

 if (vfio_pci_is_vga(pdev)) {
  vga_client_register(pdev, ((void*)0), ((void*)0), ((void*)0));
  vga_set_legacy_decoding(pdev,
    VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM |
    VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM);
 }
}
