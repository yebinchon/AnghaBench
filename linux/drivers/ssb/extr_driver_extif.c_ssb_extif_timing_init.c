
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_extif {int dummy; } ;


 int DIV_ROUND_UP (int,unsigned long) ;
 int SSB_EXTCFG_EN ;
 int SSB_EXTIF_PROG_CFG ;
 int SSB_EXTIF_PROG_WAITCNT ;
 int SSB_PROG_WCNT_1_SHIFT ;
 int SSB_PROG_WCNT_2_SHIFT ;
 int SSB_PROG_WCNT_3_SHIFT ;
 int extif_write32 (struct ssb_extif*,int ,int) ;

void ssb_extif_timing_init(struct ssb_extif *extif, unsigned long ns)
{
 u32 tmp;


 extif_write32(extif, SSB_EXTIF_PROG_CFG, SSB_EXTCFG_EN);


 tmp = DIV_ROUND_UP(10, ns) << SSB_PROG_WCNT_3_SHIFT;
 tmp |= DIV_ROUND_UP(40, ns) << SSB_PROG_WCNT_1_SHIFT;
 tmp |= DIV_ROUND_UP(120, ns);
 extif_write32(extif, SSB_EXTIF_PROG_WAITCNT, tmp);


 tmp = DIV_ROUND_UP(10, ns) << SSB_PROG_WCNT_3_SHIFT;
 tmp |= DIV_ROUND_UP(20, ns) << SSB_PROG_WCNT_2_SHIFT;
 tmp |= DIV_ROUND_UP(100, ns) << SSB_PROG_WCNT_1_SHIFT;
 tmp |= DIV_ROUND_UP(120, ns);
 extif_write32(extif, SSB_EXTIF_PROG_WAITCNT, tmp);
}
