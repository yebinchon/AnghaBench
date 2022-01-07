
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmc {TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_powergates; int * powergates; } ;


 int EINVAL ;
 int ENODEV ;
 int strcmp (char const*,int ) ;
 int tegra_powergate_is_valid (struct tegra_pmc*,unsigned int) ;

__attribute__((used)) static int tegra_powergate_lookup(struct tegra_pmc *pmc, const char *name)
{
 unsigned int i;

 if (!pmc || !pmc->soc || !name)
  return -EINVAL;

 for (i = 0; i < pmc->soc->num_powergates; i++) {
  if (!tegra_powergate_is_valid(pmc, i))
   continue;

  if (!strcmp(name, pmc->soc->powergates[i]))
   return i;
 }

 return -ENODEV;
}
