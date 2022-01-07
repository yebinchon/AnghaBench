
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_powergate {unsigned int id; int num_clks; TYPE_1__* pmc; struct reset_control* reset; struct clk** clks; } ;
struct reset_control {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,unsigned int,int) ;
 int kfree (struct tegra_powergate*) ;
 struct tegra_powergate* kzalloc (int,int ) ;
 TYPE_1__* pmc ;
 int tegra_powergate_is_available (TYPE_1__*,unsigned int) ;
 int tegra_powergate_power_up (struct tegra_powergate*,int) ;

int tegra_powergate_sequence_power_up(unsigned int id, struct clk *clk,
          struct reset_control *rst)
{
 struct tegra_powergate *pg;
 int err;

 if (!tegra_powergate_is_available(pmc, id))
  return -EINVAL;

 pg = kzalloc(sizeof(*pg), GFP_KERNEL);
 if (!pg)
  return -ENOMEM;

 pg->id = id;
 pg->clks = &clk;
 pg->num_clks = 1;
 pg->reset = rst;
 pg->pmc = pmc;

 err = tegra_powergate_power_up(pg, 0);
 if (err)
  dev_err(pmc->dev, "failed to turn on partition %d: %d\n", id,
   err);

 kfree(pg);

 return err;
}
