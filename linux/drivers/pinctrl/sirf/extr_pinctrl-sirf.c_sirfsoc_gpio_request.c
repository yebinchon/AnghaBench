
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_gpio_chip {int dummy; } ;
struct sirfsoc_gpio_bank {int lock; int id; } ;
struct gpio_chip {unsigned int base; } ;


 int ENODEV ;
 int SIRFSOC_GPIO_CTRL (int ,unsigned int) ;
 int __sirfsoc_gpio_irq_mask (struct sirfsoc_gpio_chip*,struct sirfsoc_gpio_bank*,unsigned int) ;
 struct sirfsoc_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ pinctrl_gpio_request (unsigned int) ;
 int sirfsoc_gpio_set_input (struct sirfsoc_gpio_chip*,int ) ;
 struct sirfsoc_gpio_bank* sirfsoc_gpio_to_bank (struct sirfsoc_gpio_chip*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sirfsoc_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct sirfsoc_gpio_chip *sgpio = gpiochip_get_data(chip);
 struct sirfsoc_gpio_bank *bank = sirfsoc_gpio_to_bank(sgpio, offset);
 unsigned long flags;

 if (pinctrl_gpio_request(chip->base + offset))
  return -ENODEV;

 spin_lock_irqsave(&bank->lock, flags);





 sirfsoc_gpio_set_input(sgpio, SIRFSOC_GPIO_CTRL(bank->id, offset));
 __sirfsoc_gpio_irq_mask(sgpio, bank, offset);

 spin_unlock_irqrestore(&bank->lock, flags);

 return 0;
}
