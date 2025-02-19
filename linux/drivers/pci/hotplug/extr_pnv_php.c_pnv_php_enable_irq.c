
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_php_slot {struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;


 scalar_t__ pci_dev_msi_enabled (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*,int) ;
 int pnv_php_enable_msix (struct pnv_php_slot*) ;
 int pnv_php_init_irq (struct pnv_php_slot*,int) ;

__attribute__((used)) static void pnv_php_enable_irq(struct pnv_php_slot *php_slot)
{
 struct pci_dev *pdev = php_slot->pdev;
 int irq, ret;






 if (pci_dev_msi_enabled(pdev))
  return;

 ret = pci_enable_device(pdev);
 if (ret) {
  pci_warn(pdev, "Error %d enabling device\n", ret);
  return;
 }

 pci_set_master(pdev);


 irq = pnv_php_enable_msix(php_slot);
 if (irq > 0) {
  pnv_php_init_irq(php_slot, irq);
  return;
 }





 ret = pci_enable_msi(pdev);
 if (!ret || pdev->irq) {
  irq = pdev->irq;
  pnv_php_init_irq(php_slot, irq);
 }
}
