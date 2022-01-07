
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ pm_cap; scalar_t__ wakeup_prepared; int pme_support; } ;


 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_PME_ENABLE ;
 int PCI_PM_CTRL_PME_STATUS ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

void pci_pme_restore(struct pci_dev *dev)
{
 u16 pmcsr;

 if (!dev->pme_support)
  return;

 pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
 if (dev->wakeup_prepared) {
  pmcsr |= PCI_PM_CTRL_PME_ENABLE;
  pmcsr &= ~PCI_PM_CTRL_PME_STATUS;
 } else {
  pmcsr &= ~PCI_PM_CTRL_PME_ENABLE;
  pmcsr |= PCI_PM_CTRL_PME_STATUS;
 }
 pci_write_config_word(dev, dev->pm_cap + PCI_PM_CTRL, pmcsr);
}
