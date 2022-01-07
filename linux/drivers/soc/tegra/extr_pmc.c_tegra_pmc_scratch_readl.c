
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {scalar_t__ scratch; scalar_t__ tz_only; } ;


 int readl (scalar_t__) ;
 int tegra_pmc_readl (struct tegra_pmc*,unsigned long) ;

__attribute__((used)) static u32 tegra_pmc_scratch_readl(struct tegra_pmc *pmc, unsigned long offset)
{
 if (pmc->tz_only)
  return tegra_pmc_readl(pmc, offset);

 return readl(pmc->scratch + offset);
}
