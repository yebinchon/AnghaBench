
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_bus {int gpio_lock; int extif; int chipco; } ;


 int WARN_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ ssb_chipco_available (int *) ;
 int ssb_chipco_gpio_in (int *,int ) ;
 scalar_t__ ssb_extif_available (int *) ;
 int ssb_extif_gpio_in (int *,int ) ;

u32 ssb_gpio_in(struct ssb_bus *bus, u32 mask)
{
 unsigned long flags;
 u32 res = 0;

 spin_lock_irqsave(&bus->gpio_lock, flags);
 if (ssb_chipco_available(&bus->chipco))
  res = ssb_chipco_gpio_in(&bus->chipco, mask);
 else if (ssb_extif_available(&bus->extif))
  res = ssb_extif_gpio_in(&bus->extif, mask);
 else
  WARN_ON(1);
 spin_unlock_irqrestore(&bus->gpio_lock, flags);

 return res;
}
