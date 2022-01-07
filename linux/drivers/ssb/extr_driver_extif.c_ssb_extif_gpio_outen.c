
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_extif {int gpio_lock; } ;


 int SSB_EXTIF_GPIO_OUTEN (int ) ;
 int extif_write32_masked (struct ssb_extif*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 ssb_extif_gpio_outen(struct ssb_extif *extif, u32 mask, u32 value)
{
 unsigned long flags;
 u32 res = 0;

 spin_lock_irqsave(&extif->gpio_lock, flags);
 res = extif_write32_masked(extif, SSB_EXTIF_GPIO_OUTEN(0),
       mask, value);
 spin_unlock_irqrestore(&extif->gpio_lock, flags);

 return res;
}
