
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int readl_relaxed (scalar_t__) ;
 scalar_t__ strapping_base ;

u32 tegra_read_straps(void)
{
 if (strapping_base)
  return readl_relaxed(strapping_base);
 else
  return 0;
}
