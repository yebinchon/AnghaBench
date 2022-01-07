
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {int lock; scalar_t__ base; } ;


 int BIT (int ) ;
 int OUTPUT_ENABLE_OFF ;
 struct amd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int amd_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
{
 unsigned long flags;
 u32 pin_reg;
 struct amd_gpio *gpio_dev = gpiochip_get_data(gc);

 raw_spin_lock_irqsave(&gpio_dev->lock, flags);
 pin_reg = readl(gpio_dev->base + offset * 4);
 raw_spin_unlock_irqrestore(&gpio_dev->lock, flags);

 return !(pin_reg & BIT(OUTPUT_ENABLE_OFF));
}
