
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int pm_save; scalar_t__ needs_pm_restore; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ current_state; } ;
typedef scalar_t__ pci_power_t ;


 scalar_t__ PCI_D0 ;
 scalar_t__ PCI_D3hot ;
 int pci_load_and_free_saved_state (struct pci_dev*,int *) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,scalar_t__) ;
 int pci_store_saved_state (struct pci_dev*) ;

int vfio_pci_set_power_state(struct vfio_pci_device *vdev, pci_power_t state)
{
 struct pci_dev *pdev = vdev->pdev;
 bool needs_restore = 0, needs_save = 0;
 int ret;

 if (vdev->needs_pm_restore) {
  if (pdev->current_state < PCI_D3hot && state >= PCI_D3hot) {
   pci_save_state(pdev);
   needs_save = 1;
  }

  if (pdev->current_state >= PCI_D3hot && state <= PCI_D0)
   needs_restore = 1;
 }

 ret = pci_set_power_state(pdev, state);

 if (!ret) {

  if (needs_save && pdev->current_state >= PCI_D3hot) {
   vdev->pm_save = pci_store_saved_state(pdev);
  } else if (needs_restore) {
   pci_load_and_free_saved_state(pdev, &vdev->pm_save);
   pci_restore_state(pdev);
  }
 }

 return ret;
}
