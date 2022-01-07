
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_powergate {unsigned int num_clks; int * clks; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int tegra_powergate_enable_clocks(struct tegra_powergate *pg)
{
 unsigned int i;
 int err;

 for (i = 0; i < pg->num_clks; i++) {
  err = clk_prepare_enable(pg->clks[i]);
  if (err)
   goto out;
 }

 return 0;

out:
 while (i--)
  clk_disable_unprepare(pg->clks[i]);

 return err;
}
