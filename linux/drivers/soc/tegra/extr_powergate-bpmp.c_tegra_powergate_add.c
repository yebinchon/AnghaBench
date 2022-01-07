
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_powergate_info {int name; int id; } ;
struct TYPE_2__ {int name; int power_off; int power_on; } ;
struct tegra_powergate {TYPE_1__ genpd; struct tegra_bpmp* bpmp; int id; } ;
struct tegra_bpmp {int dev; } ;


 int ENOMEM ;
 struct tegra_powergate* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct tegra_powergate* devm_kzalloc (int ,int,int ) ;
 int kfree (int ) ;
 int kstrdup (int ,int ) ;
 int pm_genpd_init (TYPE_1__*,int *,int) ;
 int tegra_bpmp_powergate_is_powered (struct tegra_bpmp*,int ) ;
 int tegra_powergate_power_off ;
 int tegra_powergate_power_on ;

__attribute__((used)) static struct tegra_powergate *
tegra_powergate_add(struct tegra_bpmp *bpmp,
      const struct tegra_powergate_info *info)
{
 struct tegra_powergate *powergate;
 bool off;
 int err;

 off = !tegra_bpmp_powergate_is_powered(bpmp, info->id);

 powergate = devm_kzalloc(bpmp->dev, sizeof(*powergate), GFP_KERNEL);
 if (!powergate)
  return ERR_PTR(-ENOMEM);

 powergate->id = info->id;
 powergate->bpmp = bpmp;

 powergate->genpd.name = kstrdup(info->name, GFP_KERNEL);
 powergate->genpd.power_on = tegra_powergate_power_on;
 powergate->genpd.power_off = tegra_powergate_power_off;

 err = pm_genpd_init(&powergate->genpd, ((void*)0), off);
 if (err < 0) {
  kfree(powergate->genpd.name);
  return ERR_PTR(err);
 }

 return powergate;
}
