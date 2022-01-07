
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_D0 ;
 int pci_enable_wake (struct pci_dev*,int ,int) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

int pci_back_from_sleep(struct pci_dev *dev)
{
 pci_enable_wake(dev, PCI_D0, 0);
 return pci_set_power_state(dev, PCI_D0);
}
