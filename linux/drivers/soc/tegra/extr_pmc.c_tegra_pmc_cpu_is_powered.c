
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmc ;
 int tegra_get_cpu_powergate_id (int ,unsigned int) ;
 int tegra_powergate_is_powered (int ,int) ;

bool tegra_pmc_cpu_is_powered(unsigned int cpuid)
{
 int id;

 id = tegra_get_cpu_powergate_id(pmc, cpuid);
 if (id < 0)
  return 0;

 return tegra_powergate_is_powered(pmc, id);
}
