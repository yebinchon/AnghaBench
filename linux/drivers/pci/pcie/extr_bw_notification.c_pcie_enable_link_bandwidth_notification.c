
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_LBMIE ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_LBMS ;
 int pcie_capability_read_word (struct pci_dev*,int ,int *) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void pcie_enable_link_bandwidth_notification(struct pci_dev *dev)
{
 u16 lnk_ctl;

 pcie_capability_write_word(dev, PCI_EXP_LNKSTA, PCI_EXP_LNKSTA_LBMS);

 pcie_capability_read_word(dev, PCI_EXP_LNKCTL, &lnk_ctl);
 lnk_ctl |= PCI_EXP_LNKCTL_LBMIE;
 pcie_capability_write_word(dev, PCI_EXP_LNKCTL, lnk_ctl);
}
