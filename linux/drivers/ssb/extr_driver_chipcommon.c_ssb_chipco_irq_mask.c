
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int dummy; } ;


 int SSB_CHIPCO_IRQMASK ;
 int chipco_write32_masked (struct ssb_chipcommon*,int ,int ,int ) ;

void ssb_chipco_irq_mask(struct ssb_chipcommon *cc, u32 mask, u32 value)
{
 chipco_write32_masked(cc, SSB_CHIPCO_IRQMASK, mask, value);
}
