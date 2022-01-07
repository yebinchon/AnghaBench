
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_epf_bar {int barno; int flags; } ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int ib_window_map; int * bar_to_atu; } ;
struct dw_pcie {int dummy; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;


 int DW_PCIE_REGION_INBOUND ;
 int __dw_pcie_ep_reset_bar (struct dw_pcie*,int,int ) ;
 int clear_bit (int ,int ) ;
 int dw_pcie_disable_atu (struct dw_pcie*,int ,int ) ;
 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static void dw_pcie_ep_clear_bar(struct pci_epc *epc, u8 func_no,
     struct pci_epf_bar *epf_bar)
{
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 enum pci_barno bar = epf_bar->barno;
 u32 atu_index = ep->bar_to_atu[bar];

 __dw_pcie_ep_reset_bar(pci, bar, epf_bar->flags);

 dw_pcie_disable_atu(pci, atu_index, DW_PCIE_REGION_INBOUND);
 clear_bit(atu_index, ep->ib_window_map);
}
