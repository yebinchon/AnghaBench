
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcie_port {TYPE_1__* ops; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;
struct TYPE_2__ {int (* wr_own_conf ) (struct pcie_port*,int,int,int ) ;} ;


 int dw_pcie_write (scalar_t__,int,int ) ;
 int stub1 (struct pcie_port*,int,int,int ) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
          u32 val)
{
 struct dw_pcie *pci;

 if (pp->ops->wr_own_conf)
  return pp->ops->wr_own_conf(pp, where, size, val);

 pci = to_dw_pcie_from_pp(pp);
 return dw_pcie_write(pci->dbi_base + where, size, val);
}
