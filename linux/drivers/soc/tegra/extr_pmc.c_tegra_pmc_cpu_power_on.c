
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pmc ;
 int tegra_get_cpu_powergate_id (int ,unsigned int) ;
 int tegra_powergate_set (int ,int,int) ;

int tegra_pmc_cpu_power_on(unsigned int cpuid)
{
 int id;

 id = tegra_get_cpu_powergate_id(pmc, cpuid);
 if (id < 0)
  return id;

 return tegra_powergate_set(pmc, id, 1);
}
