
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_pcie_ep {int page_size; } ;
struct dw_pcie {int dummy; } ;


 int AM654_WIN_SIZE ;
 scalar_t__ APP_ADDR_SPACE_0 ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_MEM_TYPE_32 ;
 int PCI_BASE_ADDRESS_SPACE_MEMORY ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;
 int dw_pcie_writel_dbi2 (struct dw_pcie*,int ,scalar_t__) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static void ks_pcie_am654_ep_init(struct dw_pcie_ep *ep)
{
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 int flags;

 ep->page_size = AM654_WIN_SIZE;
 flags = PCI_BASE_ADDRESS_SPACE_MEMORY | PCI_BASE_ADDRESS_MEM_TYPE_32;
 dw_pcie_writel_dbi2(pci, PCI_BASE_ADDRESS_0, APP_ADDR_SPACE_0 - 1);
 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, flags);
}
