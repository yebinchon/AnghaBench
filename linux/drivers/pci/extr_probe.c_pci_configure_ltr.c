
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_host_bridge {int native_ltr; } ;
struct pci_dev {int ltr_path; int bus; } ;


 int PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCAP2_LTR ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_LTR_EN ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void pci_configure_ltr(struct pci_dev *dev)
{
}
