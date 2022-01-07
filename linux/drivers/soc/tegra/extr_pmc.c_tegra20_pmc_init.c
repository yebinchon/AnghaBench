
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {scalar_t__ sysclkreq_high; } ;


 int PMC_CNTRL ;
 int PMC_CNTRL_CPU_PWRREQ_OE ;
 int PMC_CNTRL_SYSCLK_OE ;
 int PMC_CNTRL_SYSCLK_POLARITY ;
 int tegra_pmc_readl (struct tegra_pmc*,int ) ;
 int tegra_pmc_writel (struct tegra_pmc*,int ,int ) ;

__attribute__((used)) static void tegra20_pmc_init(struct tegra_pmc *pmc)
{
 u32 value;


 value = tegra_pmc_readl(pmc, PMC_CNTRL);
 value |= PMC_CNTRL_CPU_PWRREQ_OE;
 tegra_pmc_writel(pmc, value, PMC_CNTRL);

 value = tegra_pmc_readl(pmc, PMC_CNTRL);

 if (pmc->sysclkreq_high)
  value &= ~PMC_CNTRL_SYSCLK_POLARITY;
 else
  value |= PMC_CNTRL_SYSCLK_POLARITY;


 tegra_pmc_writel(pmc, value, PMC_CNTRL);


 value = tegra_pmc_readl(pmc, PMC_CNTRL);
 value |= PMC_CNTRL_SYSCLK_OE;
 tegra_pmc_writel(pmc, value, PMC_CNTRL);
}
