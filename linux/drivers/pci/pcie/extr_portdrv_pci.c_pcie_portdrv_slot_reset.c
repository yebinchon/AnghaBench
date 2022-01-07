
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_RECOVERED ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t pcie_portdrv_slot_reset(struct pci_dev *dev)
{
 pci_restore_state(dev);
 pci_save_state(dev);
 return PCI_ERS_RESULT_RECOVERED;
}
