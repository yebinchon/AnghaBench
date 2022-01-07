
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_RTCAP ;
 int PCI_EXP_RTCAP_CRSVIS ;
 int PCI_EXP_RTCTL ;
 int PCI_EXP_RTCTL_CRSSVE ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void pci_enable_crs(struct pci_dev *pdev)
{
 u16 root_cap = 0;


 pcie_capability_read_word(pdev, PCI_EXP_RTCAP, &root_cap);
 if (root_cap & PCI_EXP_RTCAP_CRSVIS)
  pcie_capability_set_word(pdev, PCI_EXP_RTCTL,
      PCI_EXP_RTCTL_CRSSVE);
}
