
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tegra_io_pad_power_enable (unsigned int) ;

int tegra_io_rail_power_on(unsigned int id)
{
 return tegra_io_pad_power_enable(id);
}
