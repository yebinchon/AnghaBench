
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_D0 ;
 int __pci_start_power_transition (struct pci_dev*,int ) ;
 int pci_raw_set_power_state (struct pci_dev*,int ) ;
 int pci_update_current_state (struct pci_dev*,int ) ;

void pci_power_up(struct pci_dev *dev)
{
 __pci_start_power_transition(dev, PCI_D0);
 pci_raw_set_power_state(dev, PCI_D0);
 pci_update_current_state(dev, PCI_D0);
}
