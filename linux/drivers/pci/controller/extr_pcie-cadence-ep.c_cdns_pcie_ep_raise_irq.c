
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_epc {int dummy; } ;
struct cdns_pcie_ep {int dummy; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;


 int EINVAL ;


 int cdns_pcie_ep_send_legacy_irq (struct cdns_pcie_ep*,int ,int ) ;
 int cdns_pcie_ep_send_msi_irq (struct cdns_pcie_ep*,int ,int ) ;
 struct cdns_pcie_ep* epc_get_drvdata (struct pci_epc*) ;

__attribute__((used)) static int cdns_pcie_ep_raise_irq(struct pci_epc *epc, u8 fn,
      enum pci_epc_irq_type type,
      u16 interrupt_num)
{
 struct cdns_pcie_ep *ep = epc_get_drvdata(epc);

 switch (type) {
 case 129:
  return cdns_pcie_ep_send_legacy_irq(ep, fn, 0);

 case 128:
  return cdns_pcie_ep_send_msi_irq(ep, fn, interrupt_num);

 default:
  break;
 }

 return -EINVAL;
}
