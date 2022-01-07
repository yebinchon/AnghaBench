
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmc {TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_cpu_powergates; int* cpu_powergates; } ;


 int EINVAL ;

__attribute__((used)) static int tegra_get_cpu_powergate_id(struct tegra_pmc *pmc,
          unsigned int cpuid)
{
 if (pmc->soc && cpuid < pmc->soc->num_cpu_powergates)
  return pmc->soc->cpu_powergates[cpuid];

 return -EINVAL;
}
