
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {int gpio_lock; TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int SSB_CHIPCO_GPIOPULLUP ;
 int chipco_write32_masked (struct ssb_chipcommon*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 ssb_chipco_gpio_pullup(struct ssb_chipcommon *cc, u32 mask, u32 value)
{
 unsigned long flags;
 u32 res = 0;

 if (cc->dev->id.revision < 20)
  return 0xffffffff;

 spin_lock_irqsave(&cc->gpio_lock, flags);
 res = chipco_write32_masked(cc, SSB_CHIPCO_GPIOPULLUP, mask, value);
 spin_unlock_irqrestore(&cc->gpio_lock, flags);

 return res;
}
