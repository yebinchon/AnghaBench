
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dev; } ;
struct artpec6_pcie {struct dw_pcie* pci; } ;


 int NOCCFG ;
 int NOCCFG_ENABLE_CLK_PCIE ;
 int NOCCFG_POWER_PCIE_IDLEREQ ;
 int PCIECFG ;
 int PCIECFG_PCLK_ENABLE ;
 int PCIECFG_REFCLKSEL ;
 int PCIECFG_RISRCREN ;
 int PCIESTAT ;
 int PCIESTAT_EXTREFCLK ;
 int artpec6_pcie_readl (struct artpec6_pcie*,int ) ;
 int artpec6_pcie_writel (struct artpec6_pcie*,int ,int) ;
 int dev_dbg (int ,char*,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void artpec6_pcie_init_phy_a7(struct artpec6_pcie *artpec6_pcie)
{
 struct dw_pcie *pci = artpec6_pcie->pci;
 u32 val;
 bool extrefclk;


 val = artpec6_pcie_readl(artpec6_pcie, PCIESTAT);
 extrefclk = !!(val & PCIESTAT_EXTREFCLK);
 dev_dbg(pci->dev, "Using reference clock: %s\n",
  extrefclk ? "external" : "internal");

 val = artpec6_pcie_readl(artpec6_pcie, PCIECFG);
 val |= PCIECFG_RISRCREN |
  PCIECFG_PCLK_ENABLE;
 if (extrefclk)
  val |= PCIECFG_REFCLKSEL;
 else
  val &= ~PCIECFG_REFCLKSEL;
 artpec6_pcie_writel(artpec6_pcie, PCIECFG, val);
 usleep_range(10, 20);

 val = artpec6_pcie_readl(artpec6_pcie, NOCCFG);
 val |= NOCCFG_ENABLE_CLK_PCIE;
 artpec6_pcie_writel(artpec6_pcie, NOCCFG, val);
 usleep_range(20, 30);

 val = artpec6_pcie_readl(artpec6_pcie, NOCCFG);
 val &= ~NOCCFG_POWER_PCIE_IDLEREQ;
 artpec6_pcie_writel(artpec6_pcie, NOCCFG, val);
}
