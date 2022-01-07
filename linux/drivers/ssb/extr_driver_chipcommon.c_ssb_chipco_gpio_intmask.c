
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int gpio_lock; } ;


 int SSB_CHIPCO_GPIOIRQ ;
 int chipco_write32_masked (struct ssb_chipcommon*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 ssb_chipco_gpio_intmask(struct ssb_chipcommon *cc, u32 mask, u32 value)
{
 unsigned long flags;
 u32 res = 0;

 spin_lock_irqsave(&cc->gpio_lock, flags);
 res = chipco_write32_masked(cc, SSB_CHIPCO_GPIOIRQ, mask, value);
 spin_unlock_irqrestore(&cc->gpio_lock, flags);

 return res;
}
