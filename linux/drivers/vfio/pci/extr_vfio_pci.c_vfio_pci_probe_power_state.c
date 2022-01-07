
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vfio_pci_device {int needs_pm_restore; struct pci_dev* pdev; } ;
struct pci_dev {scalar_t__ pm_cap; } ;


 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_NO_SOFT_RESET ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static void vfio_pci_probe_power_state(struct vfio_pci_device *vdev)
{
 struct pci_dev *pdev = vdev->pdev;
 u16 pmcsr;

 if (!pdev->pm_cap)
  return;

 pci_read_config_word(pdev, pdev->pm_cap + PCI_PM_CTRL, &pmcsr);

 vdev->needs_pm_restore = !(pmcsr & PCI_PM_CTRL_NO_SOFT_RESET);
}
