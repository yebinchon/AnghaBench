
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcie_port {TYPE_1__* ops; } ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int (* rd_other_conf ) (struct pcie_port*,struct pci_bus*,int ,int,int,int *) ;} ;


 int dw_pcie_access_other_conf (struct pcie_port*,struct pci_bus*,int ,int,int,int *,int) ;
 int stub1 (struct pcie_port*,struct pci_bus*,int ,int,int,int *) ;

__attribute__((used)) static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
     u32 devfn, int where, int size, u32 *val)
{
 if (pp->ops->rd_other_conf)
  return pp->ops->rd_other_conf(pp, bus, devfn, where,
           size, val);

 return dw_pcie_access_other_conf(pp, bus, devfn, where, size, val,
      0);
}
