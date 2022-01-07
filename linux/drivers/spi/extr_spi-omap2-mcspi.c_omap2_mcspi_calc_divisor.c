
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP2_MCSPI_MAX_FREQ ;

__attribute__((used)) static u32 omap2_mcspi_calc_divisor(u32 speed_hz)
{
 u32 div;

 for (div = 0; div < 15; div++)
  if (speed_hz >= (OMAP2_MCSPI_MAX_FREQ >> div))
   return div;

 return 15;
}
