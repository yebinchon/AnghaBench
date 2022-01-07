
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int ob_window_map; } ;
struct dw_pcie {int dummy; } ;
typedef int phys_addr_t ;


 int DW_PCIE_REGION_OUTBOUND ;
 int clear_bit (int ,int ) ;
 int dw_pcie_disable_atu (struct dw_pcie*,int ,int ) ;
 int dw_pcie_find_index (struct dw_pcie_ep*,int ,int *) ;
 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static void dw_pcie_ep_unmap_addr(struct pci_epc *epc, u8 func_no,
      phys_addr_t addr)
{
 int ret;
 u32 atu_index;
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);

 ret = dw_pcie_find_index(ep, addr, &atu_index);
 if (ret < 0)
  return;

 dw_pcie_disable_atu(pci, atu_index, DW_PCIE_REGION_OUTBOUND);
 clear_bit(atu_index, ep->ob_window_map);
}
