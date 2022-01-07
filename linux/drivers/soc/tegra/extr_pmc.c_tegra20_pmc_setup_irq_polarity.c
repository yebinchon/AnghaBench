
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {int dummy; } ;
struct device_node {int dummy; } ;


 int PMC_CNTRL ;
 int PMC_CNTRL_INTR_POLARITY ;
 int tegra_pmc_readl (struct tegra_pmc*,int ) ;
 int tegra_pmc_writel (struct tegra_pmc*,int ,int ) ;

__attribute__((used)) static void tegra20_pmc_setup_irq_polarity(struct tegra_pmc *pmc,
        struct device_node *np,
        bool invert)
{
 u32 value;

 value = tegra_pmc_readl(pmc, PMC_CNTRL);

 if (invert)
  value |= PMC_CNTRL_INTR_POLARITY;
 else
  value &= ~PMC_CNTRL_INTR_POLARITY;

 tegra_pmc_writel(pmc, value, PMC_CNTRL);
}
