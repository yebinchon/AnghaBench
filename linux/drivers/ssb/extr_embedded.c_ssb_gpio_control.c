
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_bus {int gpio_lock; int chipco; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ ssb_chipco_available (int *) ;
 int ssb_chipco_gpio_control (int *,int ,int ) ;

u32 ssb_gpio_control(struct ssb_bus *bus, u32 mask, u32 value)
{
 unsigned long flags;
 u32 res = 0;

 spin_lock_irqsave(&bus->gpio_lock, flags);
 if (ssb_chipco_available(&bus->chipco))
  res = ssb_chipco_gpio_control(&bus->chipco, mask, value);
 spin_unlock_irqrestore(&bus->gpio_lock, flags);

 return res;
}
