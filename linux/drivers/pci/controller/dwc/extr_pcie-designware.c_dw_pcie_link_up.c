
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dw_pcie {scalar_t__ dbi_base; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* link_up ) (struct dw_pcie*) ;} ;


 scalar_t__ PCIE_PORT_DEBUG1 ;
 int PCIE_PORT_DEBUG1_LINK_IN_TRAINING ;
 int PCIE_PORT_DEBUG1_LINK_UP ;
 int readl (scalar_t__) ;
 int stub1 (struct dw_pcie*) ;

int dw_pcie_link_up(struct dw_pcie *pci)
{
 u32 val;

 if (pci->ops->link_up)
  return pci->ops->link_up(pci);

 val = readl(pci->dbi_base + PCIE_PORT_DEBUG1);
 return ((val & PCIE_PORT_DEBUG1_LINK_UP) &&
  (!(val & PCIE_PORT_DEBUG1_LINK_IN_TRAINING)));
}
