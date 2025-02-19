
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subordinate; } ;
typedef scalar_t__ pci_power_t ;


 int EINVAL ;
 scalar_t__ PCI_D0 ;
 scalar_t__ PCI_D3cold ;
 int pci_bus_set_current_state (int ,scalar_t__) ;
 int pci_platform_power_transition (struct pci_dev*,scalar_t__) ;

int __pci_complete_power_transition(struct pci_dev *dev, pci_power_t state)
{
 int ret;

 if (state <= PCI_D0)
  return -EINVAL;
 ret = pci_platform_power_transition(dev, state);

 if (!ret && state == PCI_D3cold)
  pci_bus_set_current_state(dev->subordinate, PCI_D3cold);
 return ret;
}
