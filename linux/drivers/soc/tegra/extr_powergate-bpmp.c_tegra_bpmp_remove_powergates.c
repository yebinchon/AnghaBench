
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_powergate {int dummy; } ;
struct genpd_onecell_data {unsigned int num_domains; TYPE_1__** domains; } ;
struct tegra_bpmp {int dev; struct genpd_onecell_data genpd; } ;
struct TYPE_2__ {int name; } ;


 int dev_dbg (int ,char*,int ) ;
 int tegra_powergate_remove (struct tegra_powergate*) ;
 struct tegra_powergate* to_tegra_powergate (TYPE_1__*) ;

__attribute__((used)) static void tegra_bpmp_remove_powergates(struct tegra_bpmp *bpmp)
{
 struct genpd_onecell_data *genpd = &bpmp->genpd;
 unsigned int i = genpd->num_domains;
 struct tegra_powergate *powergate;

 while (i--) {
  dev_dbg(bpmp->dev, "removing power domain %s\n",
   genpd->domains[i]->name);
  powergate = to_tegra_powergate(genpd->domains[i]);
  tegra_powergate_remove(powergate);
 }
}
