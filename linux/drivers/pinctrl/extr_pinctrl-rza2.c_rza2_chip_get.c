
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rza2_pinctrl_priv {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ RZA2_PIDR (int ) ;
 int RZA2_PIN_ID_TO_PIN (unsigned int) ;
 int RZA2_PIN_ID_TO_PORT (unsigned int) ;
 struct rza2_pinctrl_priv* gpiochip_get_data (struct gpio_chip*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static int rza2_chip_get(struct gpio_chip *chip, unsigned int offset)
{
 struct rza2_pinctrl_priv *priv = gpiochip_get_data(chip);
 u8 port = RZA2_PIN_ID_TO_PORT(offset);
 u8 pin = RZA2_PIN_ID_TO_PIN(offset);

 return !!(readb(priv->base + RZA2_PIDR(port)) & BIT(pin));
}
