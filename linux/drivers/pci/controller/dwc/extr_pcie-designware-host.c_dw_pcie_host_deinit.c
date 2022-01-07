
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_port {TYPE_1__* ops; int root_bus; } ;
struct TYPE_2__ {int msi_host_init; } ;


 int dw_pcie_free_msi (struct pcie_port*) ;
 scalar_t__ pci_msi_enabled () ;
 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;

void dw_pcie_host_deinit(struct pcie_port *pp)
{
 pci_stop_root_bus(pp->root_bus);
 pci_remove_root_bus(pp->root_bus);
 if (pci_msi_enabled() && !pp->ops->msi_host_init)
  dw_pcie_free_msi(pp);
}
