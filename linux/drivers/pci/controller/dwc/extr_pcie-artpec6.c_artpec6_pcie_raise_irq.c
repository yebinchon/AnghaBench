
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dev; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;


 int EINVAL ;


 int dev_err (int ,char*) ;
 int dw_pcie_ep_raise_msi_irq (struct dw_pcie_ep*,int ,int ) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int artpec6_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
      enum pci_epc_irq_type type, u16 interrupt_num)
{
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);

 switch (type) {
 case 129:
  dev_err(pci->dev, "EP cannot trigger legacy IRQs\n");
  return -EINVAL;
 case 128:
  return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
 default:
  dev_err(pci->dev, "UNKNOWN IRQ type\n");
 }

 return 0;
}
