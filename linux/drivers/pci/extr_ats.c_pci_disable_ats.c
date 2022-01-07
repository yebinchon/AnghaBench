
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ ats_enabled; scalar_t__ ats_cap; int ats_ref_cnt; scalar_t__ is_virtfn; } ;


 scalar_t__ PCI_ATS_CTRL ;
 int PCI_ATS_CTRL_ENABLE ;
 scalar_t__ WARN_ON (int) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct pci_dev* pci_physfn (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

void pci_disable_ats(struct pci_dev *dev)
{
 struct pci_dev *pdev;
 u16 ctrl;

 if (WARN_ON(!dev->ats_enabled))
  return;

 if (atomic_read(&dev->ats_ref_cnt))
  return;

 if (dev->is_virtfn) {
  pdev = pci_physfn(dev);
  atomic_dec(&pdev->ats_ref_cnt);
 }

 pci_read_config_word(dev, dev->ats_cap + PCI_ATS_CTRL, &ctrl);
 ctrl &= ~PCI_ATS_CTRL_ENABLE;
 pci_write_config_word(dev, dev->ats_cap + PCI_ATS_CTRL, ctrl);

 dev->ats_enabled = 0;
}
