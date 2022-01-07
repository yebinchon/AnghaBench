
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc_features {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;


 struct pci_epc_features const ks_pcie_am654_epc_features ;

__attribute__((used)) static const struct pci_epc_features*
ks_pcie_am654_get_features(struct dw_pcie_ep *ep)
{
 return &ks_pcie_am654_epc_features;
}
