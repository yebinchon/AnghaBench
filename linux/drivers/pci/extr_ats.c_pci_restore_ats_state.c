
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ ats_cap; scalar_t__ ats_stu; int is_virtfn; int ats_enabled; } ;


 scalar_t__ PCI_ATS_CTRL ;
 int PCI_ATS_CTRL_ENABLE ;
 int PCI_ATS_CTRL_STU (scalar_t__) ;
 scalar_t__ PCI_ATS_MIN_STU ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

void pci_restore_ats_state(struct pci_dev *dev)
{
 u16 ctrl;

 if (!dev->ats_enabled)
  return;

 ctrl = PCI_ATS_CTRL_ENABLE;
 if (!dev->is_virtfn)
  ctrl |= PCI_ATS_CTRL_STU(dev->ats_stu - PCI_ATS_MIN_STU);
 pci_write_config_word(dev, dev->ats_cap + PCI_ATS_CTRL, ctrl);
}
