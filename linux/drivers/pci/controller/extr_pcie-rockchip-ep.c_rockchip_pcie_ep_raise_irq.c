
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rockchip_pcie_ep {int dummy; } ;
struct pci_epc {int dummy; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;


 int EINVAL ;


 struct rockchip_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 int rockchip_pcie_ep_send_legacy_irq (struct rockchip_pcie_ep*,int ,int ) ;
 int rockchip_pcie_ep_send_msi_irq (struct rockchip_pcie_ep*,int ,int ) ;

__attribute__((used)) static int rockchip_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
          enum pci_epc_irq_type type,
          u16 interrupt_num)
{
 struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);

 switch (type) {
 case 129:
  return rockchip_pcie_ep_send_legacy_irq(ep, fn, 0);
 case 128:
  return rockchip_pcie_ep_send_msi_irq(ep, fn, interrupt_num);
 default:
  return -EINVAL;
 }
}
