
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_epc_features {int dummy; } ;
struct pci_epc {int dummy; } ;


 struct pci_epc_features const cdns_pcie_epc_features ;

__attribute__((used)) static const struct pci_epc_features*
cdns_pcie_ep_get_features(struct pci_epc *epc, u8 func_no)
{
 return &cdns_pcie_epc_features;
}
