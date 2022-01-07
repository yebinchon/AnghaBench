
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dev; } ;


 int PCIE_GLB_STS_PHY_LINK_UP ;
 int PCIE_GLB_STS_RDLH_LINK_UP ;
 int PCIE_GLOBAL_STATUS_REG ;
 int dev_dbg (int ,char*,int) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;

__attribute__((used)) static int armada8k_pcie_link_up(struct dw_pcie *pci)
{
 u32 reg;
 u32 mask = PCIE_GLB_STS_RDLH_LINK_UP | PCIE_GLB_STS_PHY_LINK_UP;

 reg = dw_pcie_readl_dbi(pci, PCIE_GLOBAL_STATUS_REG);

 if ((reg & mask) == mask)
  return 1;

 dev_dbg(pci->dev, "No link detected (Global-Status: 0x%08x).\n", reg);
 return 0;
}
