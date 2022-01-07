
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_gpio_chip {int dummy; } ;
struct sirfsoc_gpio_bank {int lock; int id; } ;
struct gpio_chip {int dummy; } ;


 unsigned int SIRFSOC_GPIO_CTRL (int ,int) ;
 struct sirfsoc_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int sirfsoc_gpio_set_input (struct sirfsoc_gpio_chip*,unsigned int) ;
 struct sirfsoc_gpio_bank* sirfsoc_gpio_to_bank (struct sirfsoc_gpio_chip*,unsigned int) ;
 int sirfsoc_gpio_to_bankoff (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sirfsoc_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 struct sirfsoc_gpio_chip *sgpio = gpiochip_get_data(chip);
 struct sirfsoc_gpio_bank *bank = sirfsoc_gpio_to_bank(sgpio, gpio);
 int idx = sirfsoc_gpio_to_bankoff(gpio);
 unsigned long flags;
 unsigned offset;

 offset = SIRFSOC_GPIO_CTRL(bank->id, idx);

 spin_lock_irqsave(&bank->lock, flags);

 sirfsoc_gpio_set_input(sgpio, offset);

 spin_unlock_irqrestore(&bank->lock, flags);

 return 0;
}
