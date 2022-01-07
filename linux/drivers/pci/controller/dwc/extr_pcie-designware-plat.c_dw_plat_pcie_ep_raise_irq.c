
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dev; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;





 int dev_err (int ,char*) ;
 int dw_pcie_ep_raise_legacy_irq (struct dw_pcie_ep*,int ) ;
 int dw_pcie_ep_raise_msi_irq (struct dw_pcie_ep*,int ,int ) ;
 int dw_pcie_ep_raise_msix_irq (struct dw_pcie_ep*,int ,int ) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int dw_plat_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
         enum pci_epc_irq_type type,
         u16 interrupt_num)
{
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);

 switch (type) {
 case 130:
  return dw_pcie_ep_raise_legacy_irq(ep, func_no);
 case 129:
  return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
 case 128:
  return dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
 default:
  dev_err(pci->dev, "UNKNOWN IRQ type\n");
 }

 return 0;
}
