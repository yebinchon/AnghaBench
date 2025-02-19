
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int * pins; } ;


 int PINCTRL_PIN_REG_DIR ;
 struct mtk_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int mtk_hw_get_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int*) ;

__attribute__((used)) static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
{
 struct mtk_pinctrl *hw = gpiochip_get_data(chip);
 const struct mtk_pin_desc *desc;
 int value, err;

 desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];

 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
 if (err)
  return err;

 return !value;
}
