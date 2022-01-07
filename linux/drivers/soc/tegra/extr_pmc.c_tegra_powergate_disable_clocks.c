
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_powergate {unsigned int num_clks; int * clks; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void tegra_powergate_disable_clocks(struct tegra_powergate *pg)
{
 unsigned int i;

 for (i = 0; i < pg->num_clks; i++)
  clk_disable_unprepare(pg->clks[i]);
}
