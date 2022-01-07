
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct atlas7_gpio_chip {int lock; } ;


 int __atlas7_gpio_set_input (struct atlas7_gpio_chip*,unsigned int) ;
 struct atlas7_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int atlas7_gpio_direction_input(struct gpio_chip *chip,
     unsigned int gpio)
{
 struct atlas7_gpio_chip *a7gc = gpiochip_get_data(chip);
 unsigned long flags;

 raw_spin_lock_irqsave(&a7gc->lock, flags);

 __atlas7_gpio_set_input(a7gc, gpio);

 raw_spin_unlock_irqrestore(&a7gc->lock, flags);

 return 0;
}
