
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pmc {scalar_t__ clk; } ;


 int DPD_SAMPLE ;
 int DPD_SAMPLE_DISABLE ;
 int tegra_pmc_writel (struct tegra_pmc*,int ,int ) ;

__attribute__((used)) static void tegra_io_pad_unprepare(struct tegra_pmc *pmc)
{
 if (pmc->clk)
  tegra_pmc_writel(pmc, DPD_SAMPLE_DISABLE, DPD_SAMPLE);
}
