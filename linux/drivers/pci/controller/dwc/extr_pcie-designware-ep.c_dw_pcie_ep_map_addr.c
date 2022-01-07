
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dev; } ;
typedef int phys_addr_t ;


 int dev_err (int ,char*) ;
 int dw_pcie_ep_outbound_atu (struct dw_pcie_ep*,int ,int ,size_t) ;
 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int dw_pcie_ep_map_addr(struct pci_epc *epc, u8 func_no,
          phys_addr_t addr,
          u64 pci_addr, size_t size)
{
 int ret;
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);

 ret = dw_pcie_ep_outbound_atu(ep, addr, pci_addr, size);
 if (ret) {
  dev_err(pci->dev, "Failed to enable address\n");
  return ret;
 }

 return 0;
}
