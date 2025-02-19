
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int ptm_enabled; int ptm_granularity; } ;


 int EINVAL ;
 scalar_t__ PCI_EXP_TYPE_ENDPOINT ;
 scalar_t__ PCI_EXP_TYPE_RC_END ;
 int PCI_EXT_CAP_ID_PTM ;
 scalar_t__ PCI_PTM_CAP ;
 int PCI_PTM_CAP_REQ ;
 scalar_t__ PCI_PTM_CTRL ;
 int PCI_PTM_CTRL_ENABLE ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_ptm_info (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
{
 int pos;
 u32 cap, ctrl;
 struct pci_dev *ups;

 if (!pci_is_pcie(dev))
  return -EINVAL;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_PTM);
 if (!pos)
  return -EINVAL;

 pci_read_config_dword(dev, pos + PCI_PTM_CAP, &cap);
 if (!(cap & PCI_PTM_CAP_REQ))
  return -EINVAL;
 if (pci_pcie_type(dev) == PCI_EXP_TYPE_ENDPOINT) {
  ups = pci_upstream_bridge(dev);
  if (!ups || !ups->ptm_enabled)
   return -EINVAL;

  dev->ptm_granularity = ups->ptm_granularity;
 } else if (pci_pcie_type(dev) == PCI_EXP_TYPE_RC_END) {
  dev->ptm_granularity = 0;
 } else
  return -EINVAL;

 ctrl = PCI_PTM_CTRL_ENABLE;
 ctrl |= dev->ptm_granularity << 8;
 pci_write_config_dword(dev, pos + PCI_PTM_CTRL, ctrl);
 dev->ptm_enabled = 1;

 pci_ptm_info(dev);

 if (granularity)
  *granularity = dev->ptm_granularity;
 return 0;
}
