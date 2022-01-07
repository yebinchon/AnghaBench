
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int __tegra_powergate_remove_clamping (int ,unsigned int) ;
 int pmc ;
 int tegra_powergate_is_available (int ,unsigned int) ;

int tegra_powergate_remove_clamping(unsigned int id)
{
 if (!tegra_powergate_is_available(pmc, id))
  return -EINVAL;

 return __tegra_powergate_remove_clamping(pmc, id);
}
