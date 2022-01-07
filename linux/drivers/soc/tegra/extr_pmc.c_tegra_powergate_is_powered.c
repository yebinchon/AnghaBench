
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pmc {int dummy; } ;


 int EINVAL ;
 int tegra_powergate_is_valid (struct tegra_pmc*,unsigned int) ;
 int tegra_powergate_state (unsigned int) ;

__attribute__((used)) static int tegra_powergate_is_powered(struct tegra_pmc *pmc, unsigned int id)
{
 if (!tegra_powergate_is_valid(pmc, id))
  return -EINVAL;

 return tegra_powergate_state(id);
}
