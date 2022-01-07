
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int current_state; } ;


 int pci_update_current_state (struct pci_dev*,int ) ;
 scalar_t__ platform_pci_power_manageable (struct pci_dev*) ;
 int platform_pci_refresh_power_state (struct pci_dev*) ;

void pci_refresh_power_state(struct pci_dev *dev)
{
 if (platform_pci_power_manageable(dev))
  platform_pci_refresh_power_state(dev);

 pci_update_current_state(dev, dev->current_state);
}
