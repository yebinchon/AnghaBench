
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int ats_cap; } ;


 int PCI_EXT_CAP_ID_ATS ;
 scalar_t__ pci_ats_disabled () ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;

void pci_ats_init(struct pci_dev *dev)
{
 int pos;

 if (pci_ats_disabled())
  return;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ATS);
 if (!pos)
  return;

 dev->ats_cap = pos;
}
