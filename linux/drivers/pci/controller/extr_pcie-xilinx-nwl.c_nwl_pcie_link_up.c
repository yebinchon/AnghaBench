
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_pcie {scalar_t__ pcireg_base; } ;


 int PCIE_PHY_LINKUP_BIT ;
 scalar_t__ PS_LINKUP_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool nwl_pcie_link_up(struct nwl_pcie *pcie)
{
 if (readl(pcie->pcireg_base + PS_LINKUP_OFFSET) & PCIE_PHY_LINKUP_BIT)
  return 1;
 return 0;
}
