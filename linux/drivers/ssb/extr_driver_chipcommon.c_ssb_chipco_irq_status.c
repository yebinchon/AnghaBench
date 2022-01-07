
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int dummy; } ;


 int SSB_CHIPCO_IRQSTAT ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;

u32 ssb_chipco_irq_status(struct ssb_chipcommon *cc, u32 mask)
{
 return chipco_read32(cc, SSB_CHIPCO_IRQSTAT) & mask;
}
