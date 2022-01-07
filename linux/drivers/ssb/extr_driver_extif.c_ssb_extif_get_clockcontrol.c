
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_extif {int dummy; } ;


 int SSB_EXTIF_CLOCK_N ;
 int SSB_EXTIF_CLOCK_SB ;
 int SSB_PLLTYPE_1 ;
 int extif_read32 (struct ssb_extif*,int ) ;

void ssb_extif_get_clockcontrol(struct ssb_extif *extif,
    u32 *pll_type, u32 *n, u32 *m)
{
 *pll_type = SSB_PLLTYPE_1;
 *n = extif_read32(extif, SSB_EXTIF_CLOCK_N);
 *m = extif_read32(extif, SSB_EXTIF_CLOCK_SB);
}
