
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct artpec6_pcie {int dummy; } ;


 int NOCCFG ;
 int NOCCFG_ENABLE_CLK_PCIE ;
 int NOCCFG_POWER_PCIE_IDLEREQ ;
 int PCIECFG ;
 int PCIECFG_CISRREN ;
 int PCIECFG_CLKREQ_B ;
 int PCIECFG_DBG_OEN ;
 int PCIECFG_MACRO_ENABLE ;
 int PCIECFG_MODE_TX_DRV_EN ;
 int PCIECFG_PCLK_ENABLE ;
 int PCIECFG_PLL_ENABLE ;
 int PCIECFG_REFCLK_ENABLE ;
 int PCIECFG_RISRCREN ;
 int artpec6_pcie_readl (struct artpec6_pcie*,int ) ;
 int artpec6_pcie_writel (struct artpec6_pcie*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void artpec6_pcie_init_phy_a6(struct artpec6_pcie *artpec6_pcie)
{
 u32 val;

 val = artpec6_pcie_readl(artpec6_pcie, PCIECFG);
 val |= PCIECFG_RISRCREN |
  PCIECFG_MODE_TX_DRV_EN |
  PCIECFG_CISRREN |
  PCIECFG_MACRO_ENABLE;
 val |= PCIECFG_REFCLK_ENABLE;
 val &= ~PCIECFG_DBG_OEN;
 val &= ~PCIECFG_CLKREQ_B;
 artpec6_pcie_writel(artpec6_pcie, PCIECFG, val);
 usleep_range(5000, 6000);

 val = artpec6_pcie_readl(artpec6_pcie, NOCCFG);
 val |= NOCCFG_ENABLE_CLK_PCIE;
 artpec6_pcie_writel(artpec6_pcie, NOCCFG, val);
 usleep_range(20, 30);

 val = artpec6_pcie_readl(artpec6_pcie, PCIECFG);
 val |= PCIECFG_PCLK_ENABLE | PCIECFG_PLL_ENABLE;
 artpec6_pcie_writel(artpec6_pcie, PCIECFG, val);
 usleep_range(6000, 7000);

 val = artpec6_pcie_readl(artpec6_pcie, NOCCFG);
 val &= ~NOCCFG_POWER_PCIE_IDLEREQ;
 artpec6_pcie_writel(artpec6_pcie, NOCCFG, val);
}
