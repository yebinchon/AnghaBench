
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {scalar_t__ scratch; scalar_t__ tz_only; } ;


 int tegra_pmc_writel (struct tegra_pmc*,int ,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tegra_pmc_scratch_writel(struct tegra_pmc *pmc, u32 value,
         unsigned long offset)
{
 if (pmc->tz_only)
  tegra_pmc_writel(pmc, value, offset);
 else
  writel(value, pmc->scratch + offset);
}
