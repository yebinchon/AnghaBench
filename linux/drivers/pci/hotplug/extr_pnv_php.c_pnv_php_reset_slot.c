
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pnv_php_slot {scalar_t__ irq; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;


 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_DLLSC ;
 int PCI_EXP_SLTSTA_PDC ;
 int disable_irq (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 int pci_bridge_secondary_bus_reset (struct pci_dev*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;
 struct pnv_php_slot* to_pnv_php_slot (struct hotplug_slot*) ;

__attribute__((used)) static int pnv_php_reset_slot(struct hotplug_slot *slot, int probe)
{
 struct pnv_php_slot *php_slot = to_pnv_php_slot(slot);
 struct pci_dev *bridge = php_slot->pdev;
 uint16_t sts;






 if (probe)
  return !bridge;


 if (php_slot->irq > 0)
  disable_irq(php_slot->irq);

 pci_bridge_secondary_bus_reset(bridge);


 pcie_capability_read_word(php_slot->pdev, PCI_EXP_SLTSTA, &sts);
 sts &= (PCI_EXP_SLTSTA_PDC | PCI_EXP_SLTSTA_DLLSC);
 pcie_capability_write_word(php_slot->pdev, PCI_EXP_SLTSTA, sts);

 if (php_slot->irq > 0)
  enable_irq(php_slot->irq);

 return 0;
}
