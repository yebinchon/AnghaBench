
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int name; } ;
struct tegra_powergate {struct tegra_bpmp* bpmp; struct generic_pm_domain genpd; } ;
struct tegra_bpmp {int dev; } ;


 int dev_err (int ,char*,int ,int) ;
 int kfree (int ) ;
 int pm_genpd_remove (struct generic_pm_domain*) ;

__attribute__((used)) static void tegra_powergate_remove(struct tegra_powergate *powergate)
{
 struct generic_pm_domain *genpd = &powergate->genpd;
 struct tegra_bpmp *bpmp = powergate->bpmp;
 int err;

 err = pm_genpd_remove(genpd);
 if (err < 0)
  dev_err(bpmp->dev, "failed to remove power domain %s: %d\n",
   genpd->name, err);

 kfree(genpd->name);
}
