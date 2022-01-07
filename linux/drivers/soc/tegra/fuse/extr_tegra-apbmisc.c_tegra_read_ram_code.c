
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMC_STRAPPING_OPT_A_RAM_CODE_MASK_LONG ;
 int PMC_STRAPPING_OPT_A_RAM_CODE_MASK_SHORT ;
 int PMC_STRAPPING_OPT_A_RAM_CODE_SHIFT ;
 scalar_t__ long_ram_code ;
 int tegra_read_straps () ;

u32 tegra_read_ram_code(void)
{
 u32 straps = tegra_read_straps();

 if (long_ram_code)
  straps &= PMC_STRAPPING_OPT_A_RAM_CODE_MASK_LONG;
 else
  straps &= PMC_STRAPPING_OPT_A_RAM_CODE_MASK_SHORT;

 return straps >> PMC_STRAPPING_OPT_A_RAM_CODE_SHIFT;
}
