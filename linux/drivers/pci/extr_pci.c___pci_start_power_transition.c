
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subordinate; scalar_t__ d3cold_delay; int imm_ready; scalar_t__ runtime_d3cold; } ;
typedef scalar_t__ pci_power_t ;


 scalar_t__ PCI_D0 ;
 int msleep (scalar_t__) ;
 int pci_platform_power_transition (struct pci_dev*,scalar_t__) ;
 int pci_wakeup_bus (int ) ;

__attribute__((used)) static void __pci_start_power_transition(struct pci_dev *dev, pci_power_t state)
{
 if (state == PCI_D0) {
  pci_platform_power_transition(dev, PCI_D0);







  if (dev->runtime_d3cold) {
   if (dev->d3cold_delay && !dev->imm_ready)
    msleep(dev->d3cold_delay);






   pci_wakeup_bus(dev->subordinate);
  }
 }
}
