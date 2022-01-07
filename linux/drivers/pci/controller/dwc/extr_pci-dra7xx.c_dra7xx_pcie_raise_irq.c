
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dev; } ;
struct dra7xx_pcie {int dummy; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;




 int dev_err (int ,char*) ;
 int dra7xx_pcie_raise_legacy_irq (struct dra7xx_pcie*) ;
 int dra7xx_pcie_raise_msi_irq (struct dra7xx_pcie*,int ) ;
 struct dra7xx_pcie* to_dra7xx_pcie (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int dra7xx_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
     enum pci_epc_irq_type type, u16 interrupt_num)
{
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 struct dra7xx_pcie *dra7xx = to_dra7xx_pcie(pci);

 switch (type) {
 case 129:
  dra7xx_pcie_raise_legacy_irq(dra7xx);
  break;
 case 128:
  dra7xx_pcie_raise_msi_irq(dra7xx, interrupt_num);
  break;
 default:
  dev_err(pci->dev, "UNKNOWN IRQ type\n");
 }

 return 0;
}
