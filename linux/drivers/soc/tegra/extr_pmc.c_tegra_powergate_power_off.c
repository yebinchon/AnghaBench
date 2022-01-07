
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pmc ;
 int tegra_powergate_is_available (int ,unsigned int) ;
 int tegra_powergate_set (int ,unsigned int,int) ;

int tegra_powergate_power_off(unsigned int id)
{
 if (!tegra_powergate_is_available(pmc, id))
  return -EINVAL;

 return tegra_powergate_set(pmc, id, 0);
}
