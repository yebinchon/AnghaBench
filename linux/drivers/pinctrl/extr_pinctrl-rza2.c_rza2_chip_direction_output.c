
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza2_pinctrl_priv {int base; } ;
struct gpio_chip {int dummy; } ;


 struct rza2_pinctrl_priv* gpiochip_get_data (struct gpio_chip*) ;
 int rza2_chip_set (struct gpio_chip*,unsigned int,int) ;
 int rza2_pin_to_gpio (int ,unsigned int,int ) ;

__attribute__((used)) static int rza2_chip_direction_output(struct gpio_chip *chip,
          unsigned int offset, int val)
{
 struct rza2_pinctrl_priv *priv = gpiochip_get_data(chip);

 rza2_chip_set(chip, offset, val);
 rza2_pin_to_gpio(priv->base, offset, 0);

 return 0;
}
