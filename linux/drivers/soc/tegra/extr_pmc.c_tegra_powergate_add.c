
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int power_on; int power_off; } ;
struct tegra_powergate {int id; size_t num_clks; struct tegra_powergate* clks; int reset; TYPE_1__ genpd; struct tegra_pmc* pmc; } ;
struct tegra_pmc {int powergates_available; struct device* dev; } ;
struct device_node {int name; } ;
struct device {int dummy; } ;


 int CONFIG_PM_GENERIC_DOMAINS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int WARN_ON (int ) ;
 int clear_bit (int,int ) ;
 int clk_put (struct tegra_powergate) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,struct device_node*,int) ;
 int kfree (struct tegra_powergate*) ;
 struct tegra_powergate* kzalloc (int,int ) ;
 int of_genpd_add_provider_simple (struct device_node*,TYPE_1__*) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int pm_genpd_remove (TYPE_1__*) ;
 int reset_control_put (int ) ;
 int set_bit (int,int ) ;
 int tegra_genpd_power_off ;
 int tegra_genpd_power_on ;
 int tegra_powergate_is_powered (struct tegra_pmc*,int) ;
 int tegra_powergate_lookup (struct tegra_pmc*,int ) ;
 int tegra_powergate_of_get_clks (struct tegra_powergate*,struct device_node*) ;
 int tegra_powergate_of_get_resets (struct tegra_powergate*,struct device_node*,int) ;
 int tegra_powergate_power_up (struct tegra_powergate*,int) ;

__attribute__((used)) static int tegra_powergate_add(struct tegra_pmc *pmc, struct device_node *np)
{
 struct device *dev = pmc->dev;
 struct tegra_powergate *pg;
 int id, err = 0;
 bool off;

 pg = kzalloc(sizeof(*pg), GFP_KERNEL);
 if (!pg)
  return -ENOMEM;

 id = tegra_powergate_lookup(pmc, np->name);
 if (id < 0) {
  dev_err(dev, "powergate lookup failed for %pOFn: %d\n", np, id);
  err = -ENODEV;
  goto free_mem;
 }





 clear_bit(id, pmc->powergates_available);

 pg->id = id;
 pg->genpd.name = np->name;
 pg->genpd.power_off = tegra_genpd_power_off;
 pg->genpd.power_on = tegra_genpd_power_on;
 pg->pmc = pmc;

 off = !tegra_powergate_is_powered(pmc, pg->id);

 err = tegra_powergate_of_get_clks(pg, np);
 if (err < 0) {
  dev_err(dev, "failed to get clocks for %pOFn: %d\n", np, err);
  goto set_available;
 }

 err = tegra_powergate_of_get_resets(pg, np, off);
 if (err < 0) {
  dev_err(dev, "failed to get resets for %pOFn: %d\n", np, err);
  goto remove_clks;
 }

 if (!IS_ENABLED(CONFIG_PM_GENERIC_DOMAINS)) {
  if (off)
   WARN_ON(tegra_powergate_power_up(pg, 1));

  goto remove_resets;
 }

 err = pm_genpd_init(&pg->genpd, ((void*)0), off);
 if (err < 0) {
  dev_err(dev, "failed to initialise PM domain %pOFn: %d\n", np,
         err);
  goto remove_resets;
 }

 err = of_genpd_add_provider_simple(np, &pg->genpd);
 if (err < 0) {
  dev_err(dev, "failed to add PM domain provider for %pOFn: %d\n",
   np, err);
  goto remove_genpd;
 }

 dev_dbg(dev, "added PM domain %s\n", pg->genpd.name);

 return 0;

remove_genpd:
 pm_genpd_remove(&pg->genpd);

remove_resets:
 reset_control_put(pg->reset);

remove_clks:
 while (pg->num_clks--)
  clk_put(pg->clks[pg->num_clks]);

 kfree(pg->clks);

set_available:
 set_bit(id, pmc->powergates_available);

free_mem:
 kfree(pg);

 return err;
}
