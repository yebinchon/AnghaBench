
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {int dummy; } ;
typedef enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;


 int tegra_io_pad_get_dpd_register_bit (struct tegra_pmc*,int,unsigned long*,unsigned long*,int*) ;
 int tegra_pmc_readl (struct tegra_pmc*,unsigned long) ;

__attribute__((used)) static int tegra_io_pad_is_powered(struct tegra_pmc *pmc, enum tegra_io_pad id)
{
 unsigned long request, status;
 u32 mask, value;
 int err;

 err = tegra_io_pad_get_dpd_register_bit(pmc, id, &request, &status,
      &mask);
 if (err)
  return err;

 value = tegra_pmc_readl(pmc, status);

 return !(value & mask);
}
