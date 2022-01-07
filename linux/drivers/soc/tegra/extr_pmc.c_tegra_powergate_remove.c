
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_powergate {size_t num_clks; int id; struct tegra_powergate* clks; int reset; } ;
struct generic_pm_domain {int dummy; } ;
struct TYPE_2__ {int powergates_available; } ;


 int clk_put (struct tegra_powergate) ;
 int kfree (struct tegra_powergate*) ;
 TYPE_1__* pmc ;
 int reset_control_put (int ) ;
 int set_bit (int ,int ) ;
 struct tegra_powergate* to_powergate (struct generic_pm_domain*) ;

__attribute__((used)) static void tegra_powergate_remove(struct generic_pm_domain *genpd)
{
 struct tegra_powergate *pg = to_powergate(genpd);

 reset_control_put(pg->reset);

 while (pg->num_clks--)
  clk_put(pg->clks[pg->num_clks]);

 kfree(pg->clks);

 set_bit(pg->id, pmc->powergates_available);

 kfree(pg);
}
