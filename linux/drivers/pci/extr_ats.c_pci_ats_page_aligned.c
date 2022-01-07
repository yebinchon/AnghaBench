
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ ats_cap; } ;


 scalar_t__ PCI_ATS_CAP ;
 int PCI_ATS_CAP_PAGE_ALIGNED ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

int pci_ats_page_aligned(struct pci_dev *pdev)
{
 u16 cap;

 if (!pdev->ats_cap)
  return 0;

 pci_read_config_word(pdev, pdev->ats_cap + PCI_ATS_CAP, &cap);

 if (cap & PCI_ATS_CAP_PAGE_ALIGNED)
  return 1;

 return 0;
}
