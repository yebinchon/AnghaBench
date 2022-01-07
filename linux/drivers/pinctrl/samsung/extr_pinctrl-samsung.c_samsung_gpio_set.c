
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pin_bank {int slock; } ;
struct gpio_chip {int dummy; } ;


 struct samsung_pin_bank* gpiochip_get_data (struct gpio_chip*) ;
 int samsung_gpio_set_value (struct gpio_chip*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void samsung_gpio_set(struct gpio_chip *gc, unsigned offset, int value)
{
 struct samsung_pin_bank *bank = gpiochip_get_data(gc);
 unsigned long flags;

 spin_lock_irqsave(&bank->slock, flags);
 samsung_gpio_set_value(gc, offset, value);
 spin_unlock_irqrestore(&bank->slock, flags);
}
