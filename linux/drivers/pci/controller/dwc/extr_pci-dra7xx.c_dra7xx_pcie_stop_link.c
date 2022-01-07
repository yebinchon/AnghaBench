
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;
struct dra7xx_pcie {int dummy; } ;


 int LTSSM_EN ;
 int PCIECTRL_DRA7XX_CONF_DEVICE_CMD ;
 int dra7xx_pcie_readl (struct dra7xx_pcie*,int ) ;
 int dra7xx_pcie_writel (struct dra7xx_pcie*,int ,int ) ;
 struct dra7xx_pcie* to_dra7xx_pcie (struct dw_pcie*) ;

__attribute__((used)) static void dra7xx_pcie_stop_link(struct dw_pcie *pci)
{
 struct dra7xx_pcie *dra7xx = to_dra7xx_pcie(pci);
 u32 reg;

 reg = dra7xx_pcie_readl(dra7xx, PCIECTRL_DRA7XX_CONF_DEVICE_CMD);
 reg &= ~LTSSM_EN;
 dra7xx_pcie_writel(dra7xx, PCIECTRL_DRA7XX_CONF_DEVICE_CMD, reg);
}
