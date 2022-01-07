
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int pm_cap; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef scalar_t__ pci_power_t ;


 int BUG () ;
 scalar_t__ PCI_D0 ;
 scalar_t__ PCI_D3hot ;
 scalar_t__ PCI_POWER_ERROR ;





 int pci_info (struct pci_dev*,char*,int) ;
 scalar_t__ platform_pci_choose_state (struct pci_dev*) ;

pci_power_t pci_choose_state(struct pci_dev *dev, pm_message_t state)
{
 pci_power_t ret;

 if (!dev->pm_cap)
  return PCI_D0;

 ret = platform_pci_choose_state(dev);
 if (ret != PCI_POWER_ERROR)
  return ret;

 switch (state.event) {
 case 130:
  return PCI_D0;
 case 132:
 case 129:

 case 128:
 case 131:
  return PCI_D3hot;
 default:
  pci_info(dev, "unrecognized suspend event %d\n",
    state.event);
  BUG();
 }
 return PCI_D0;
}
