
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int pm_cap; } ;


 int PCI_PM_CTRL ;
 int PCI_PM_CTRL_PME_ENABLE ;
 int PCI_PM_CTRL_PME_STATUS ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

bool pci_check_pme_status(struct pci_dev *dev)
{
 int pmcsr_pos;
 u16 pmcsr;
 bool ret = 0;

 if (!dev->pm_cap)
  return 0;

 pmcsr_pos = dev->pm_cap + PCI_PM_CTRL;
 pci_read_config_word(dev, pmcsr_pos, &pmcsr);
 if (!(pmcsr & PCI_PM_CTRL_PME_STATUS))
  return 0;


 pmcsr |= PCI_PM_CTRL_PME_STATUS;
 if (pmcsr & PCI_PM_CTRL_PME_ENABLE) {

  pmcsr &= ~PCI_PM_CTRL_PME_ENABLE;
  ret = 1;
 }

 pci_write_config_word(dev, pmcsr_pos, pmcsr);

 return ret;
}
