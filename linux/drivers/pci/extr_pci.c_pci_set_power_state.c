
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ current_state; int dev_flags; } ;
typedef scalar_t__ pci_power_t ;


 scalar_t__ PCI_D0 ;
 scalar_t__ PCI_D1 ;
 scalar_t__ PCI_D2 ;
 scalar_t__ PCI_D3cold ;
 scalar_t__ PCI_D3hot ;
 int PCI_DEV_FLAGS_NO_D3 ;
 int __pci_complete_power_transition (struct pci_dev*,scalar_t__) ;
 int __pci_start_power_transition (struct pci_dev*,scalar_t__) ;
 scalar_t__ pci_no_d1d2 (struct pci_dev*) ;
 int pci_raw_set_power_state (struct pci_dev*,scalar_t__) ;

int pci_set_power_state(struct pci_dev *dev, pci_power_t state)
{
 int error;


 if (state > PCI_D3cold)
  state = PCI_D3cold;
 else if (state < PCI_D0)
  state = PCI_D0;
 else if ((state == PCI_D1 || state == PCI_D2) && pci_no_d1d2(dev))







  return 0;


 if (dev->current_state == state)
  return 0;

 __pci_start_power_transition(dev, state);





 if (state >= PCI_D3hot && (dev->dev_flags & PCI_DEV_FLAGS_NO_D3))
  return 0;





 error = pci_raw_set_power_state(dev, state > PCI_D3hot ?
     PCI_D3hot : state);

 if (!__pci_complete_power_transition(dev, state))
  error = 0;

 return error;
}
