
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int eetlp_prefix_path; } ;


 int PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCAP2_EE_PREFIX ;
 int PCI_EXP_TYPE_RC_END ;
 int PCI_EXP_TYPE_ROOT_PORT ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_pcie_type (struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void pci_configure_eetlp_prefix(struct pci_dev *dev)
{
}
