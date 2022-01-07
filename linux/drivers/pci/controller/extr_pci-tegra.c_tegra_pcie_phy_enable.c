
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pcie_soc {int tx_ref_sel; int pads_pll_ctl; } ;
struct tegra_pcie {struct tegra_pcie_soc* soc; struct device* dev; } ;
struct device {int dummy; } ;


 int PADS_CTL ;
 int PADS_CTL_IDDQ_1L ;
 int PADS_CTL_RX_DATA_EN_1L ;
 int PADS_CTL_SEL ;
 int PADS_CTL_TX_DATA_EN_1L ;
 int PADS_PLL_CTL_REFCLK_INTERNAL_CML ;
 int PADS_PLL_CTL_REFCLK_MASK ;
 int PADS_PLL_CTL_RST_B4SM ;
 int PADS_PLL_CTL_TXCLKREF_MASK ;
 int dev_err (struct device*,char*,int) ;
 int pads_readl (struct tegra_pcie*,int ) ;
 int pads_writel (struct tegra_pcie*,int,int ) ;
 int tegra_pcie_pll_wait (struct tegra_pcie*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_pcie_phy_enable(struct tegra_pcie *pcie)
{
 struct device *dev = pcie->dev;
 const struct tegra_pcie_soc *soc = pcie->soc;
 u32 value;
 int err;


 pads_writel(pcie, 0x0, PADS_CTL_SEL);


 value = pads_readl(pcie, PADS_CTL);
 value |= PADS_CTL_IDDQ_1L;
 pads_writel(pcie, value, PADS_CTL);





 value = pads_readl(pcie, soc->pads_pll_ctl);
 value &= ~(PADS_PLL_CTL_REFCLK_MASK | PADS_PLL_CTL_TXCLKREF_MASK);
 value |= PADS_PLL_CTL_REFCLK_INTERNAL_CML | soc->tx_ref_sel;
 pads_writel(pcie, value, soc->pads_pll_ctl);


 value = pads_readl(pcie, soc->pads_pll_ctl);
 value &= ~PADS_PLL_CTL_RST_B4SM;
 pads_writel(pcie, value, soc->pads_pll_ctl);

 usleep_range(20, 100);


 value = pads_readl(pcie, soc->pads_pll_ctl);
 value |= PADS_PLL_CTL_RST_B4SM;
 pads_writel(pcie, value, soc->pads_pll_ctl);


 err = tegra_pcie_pll_wait(pcie, 500);
 if (err < 0) {
  dev_err(dev, "PLL failed to lock: %d\n", err);
  return err;
 }


 value = pads_readl(pcie, PADS_CTL);
 value &= ~PADS_CTL_IDDQ_1L;
 pads_writel(pcie, value, PADS_CTL);


 value = pads_readl(pcie, PADS_CTL);
 value |= PADS_CTL_TX_DATA_EN_1L | PADS_CTL_RX_DATA_EN_1L;
 pads_writel(pcie, value, PADS_CTL);

 return 0;
}
