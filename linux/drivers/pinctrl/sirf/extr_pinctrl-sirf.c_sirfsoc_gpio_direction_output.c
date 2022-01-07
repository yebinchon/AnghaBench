
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sirfsoc_gpio_chip {int lock; } ;
struct sirfsoc_gpio_bank {int id; } ;
struct gpio_chip {int dummy; } ;


 int SIRFSOC_GPIO_CTRL (int ,int) ;
 struct sirfsoc_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int sirfsoc_gpio_set_output (struct sirfsoc_gpio_chip*,struct sirfsoc_gpio_bank*,int ,int) ;
 struct sirfsoc_gpio_bank* sirfsoc_gpio_to_bank (struct sirfsoc_gpio_chip*,unsigned int) ;
 int sirfsoc_gpio_to_bankoff (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sirfsoc_gpio_direction_output(struct gpio_chip *chip,
 unsigned gpio, int value)
{
 struct sirfsoc_gpio_chip *sgpio = gpiochip_get_data(chip);
 struct sirfsoc_gpio_bank *bank = sirfsoc_gpio_to_bank(sgpio, gpio);
 int idx = sirfsoc_gpio_to_bankoff(gpio);
 u32 offset;
 unsigned long flags;

 offset = SIRFSOC_GPIO_CTRL(bank->id, idx);

 spin_lock_irqsave(&sgpio->lock, flags);

 sirfsoc_gpio_set_output(sgpio, bank, offset, value);

 spin_unlock_irqrestore(&sgpio->lock, flags);

 return 0;
}
