
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_powergate {int id; struct tegra_bpmp* bpmp; } ;
struct tegra_bpmp {int dummy; } ;
struct generic_pm_domain {int dummy; } ;


 int PG_STATE_ON ;
 int tegra_bpmp_powergate_set_state (struct tegra_bpmp*,int ,int ) ;
 struct tegra_powergate* to_tegra_powergate (struct generic_pm_domain*) ;

__attribute__((used)) static int tegra_powergate_power_on(struct generic_pm_domain *domain)
{
 struct tegra_powergate *powergate = to_tegra_powergate(domain);
 struct tegra_bpmp *bpmp = powergate->bpmp;

 return tegra_bpmp_powergate_set_state(bpmp, powergate->id,
           PG_STATE_ON);
}
