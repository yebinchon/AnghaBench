
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_host_bridge {scalar_t__ no_ext_tags; } ;
struct pci_dev {int bus; } ;


 int PCI_EXP_DEVCAP ;
 int PCI_EXP_DEVCAP_EXT_TAG ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_EXT_TAG ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int) ;

int pci_configure_extended_tags(struct pci_dev *dev, void *ign)
{
 struct pci_host_bridge *host;
 u32 cap;
 u16 ctl;
 int ret;

 if (!pci_is_pcie(dev))
  return 0;

 ret = pcie_capability_read_dword(dev, PCI_EXP_DEVCAP, &cap);
 if (ret)
  return 0;

 if (!(cap & PCI_EXP_DEVCAP_EXT_TAG))
  return 0;

 ret = pcie_capability_read_word(dev, PCI_EXP_DEVCTL, &ctl);
 if (ret)
  return 0;

 host = pci_find_host_bridge(dev->bus);
 if (!host)
  return 0;





 if (host->no_ext_tags) {
  if (ctl & PCI_EXP_DEVCTL_EXT_TAG) {
   pci_info(dev, "disabling Extended Tags\n");
   pcie_capability_clear_word(dev, PCI_EXP_DEVCTL,
         PCI_EXP_DEVCTL_EXT_TAG);
  }
  return 0;
 }

 if (!(ctl & PCI_EXP_DEVCTL_EXT_TAG)) {
  pci_info(dev, "enabling Extended Tags\n");
  pcie_capability_set_word(dev, PCI_EXP_DEVCTL,
      PCI_EXP_DEVCTL_EXT_TAG);
 }
 return 0;
}
