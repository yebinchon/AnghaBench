
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_soc {int pads_pll_ctl; } ;
struct tegra_pcie {struct tegra_pcie_soc* soc; } ;


 int PADS_CTL ;
 int PADS_CTL_IDDQ_1L ;
 int PADS_CTL_RX_DATA_EN_1L ;
 int PADS_CTL_TX_DATA_EN_1L ;
 int PADS_PLL_CTL_RST_B4SM ;
 int pads_readl (struct tegra_pcie*,int ) ;
 int pads_writel (struct tegra_pcie*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_pcie_phy_disable(struct tegra_pcie *pcie)
{
 const struct tegra_pcie_soc *soc = pcie->soc;
 u32 value;


 value = pads_readl(pcie, PADS_CTL);
 value &= ~(PADS_CTL_TX_DATA_EN_1L | PADS_CTL_RX_DATA_EN_1L);
 pads_writel(pcie, value, PADS_CTL);


 value = pads_readl(pcie, PADS_CTL);
 value |= PADS_CTL_IDDQ_1L;
 pads_writel(pcie, value, PADS_CTL);


 value = pads_readl(pcie, soc->pads_pll_ctl);
 value &= ~PADS_PLL_CTL_RST_B4SM;
 pads_writel(pcie, value, soc->pads_pll_ctl);

 usleep_range(20, 100);

 return 0;
}
