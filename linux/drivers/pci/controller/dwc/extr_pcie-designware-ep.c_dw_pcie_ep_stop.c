
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop_link ) (struct dw_pcie*) ;} ;


 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 int stub1 (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static void dw_pcie_ep_stop(struct pci_epc *epc)
{
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);

 if (!pci->ops->stop_link)
  return;

 pci->ops->stop_link(pci);
}
