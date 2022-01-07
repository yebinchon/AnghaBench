
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct keystone_pcie {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dev; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;


 int EINVAL ;


 int dev_err (int ,char*) ;
 int dw_pcie_ep_raise_msi_irq (struct dw_pcie_ep*,int ,int ) ;
 int ks_pcie_am654_raise_legacy_irq (struct keystone_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;
 struct keystone_pcie* to_keystone_pcie (struct dw_pcie*) ;

__attribute__((used)) static int ks_pcie_am654_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
       enum pci_epc_irq_type type,
       u16 interrupt_num)
{
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 struct keystone_pcie *ks_pcie = to_keystone_pcie(pci);

 switch (type) {
 case 129:
  ks_pcie_am654_raise_legacy_irq(ks_pcie);
  break;
 case 128:
  dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
  break;
 default:
  dev_err(pci->dev, "UNKNOWN IRQ type\n");
  return -EINVAL;
 }

 return 0;
}
