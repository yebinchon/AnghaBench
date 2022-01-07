
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WARN (int,char*) ;
 scalar_t__ apbmisc_base ;
 int readl_relaxed (scalar_t__) ;

u32 tegra_read_chipid(void)
{
 if (!apbmisc_base) {
  WARN(1, "Tegra Chip ID not yet available\n");
  return 0;
 }

 return readl_relaxed(apbmisc_base + 4);
}
