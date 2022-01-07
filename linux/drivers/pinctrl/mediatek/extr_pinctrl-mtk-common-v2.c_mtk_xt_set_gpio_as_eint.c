
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* soc; } ;
struct TYPE_4__ {int eint_m; } ;
struct mtk_pin_desc {TYPE_2__ eint; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_3__ {int * pins; } ;


 int ENOTSUPP ;
 int MTK_ENABLE ;
 int MTK_INPUT ;
 int PINCTRL_PIN_REG_DIR ;
 int PINCTRL_PIN_REG_MODE ;
 int PINCTRL_PIN_REG_SMT ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int ) ;
 int mtk_xt_get_gpio_n (struct mtk_pinctrl*,unsigned long,unsigned int*,struct gpio_chip**) ;

__attribute__((used)) static int mtk_xt_set_gpio_as_eint(void *data, unsigned long eint_n)
{
 struct mtk_pinctrl *hw = (struct mtk_pinctrl *)data;
 const struct mtk_pin_desc *desc;
 struct gpio_chip *gpio_chip;
 unsigned int gpio_n;
 int err;

 err = mtk_xt_get_gpio_n(hw, eint_n, &gpio_n, &gpio_chip);
 if (err)
  return err;

 desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_MODE,
          desc->eint.eint_m);
 if (err)
  return err;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR, MTK_INPUT);
 if (err)
  return err;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT, MTK_ENABLE);






 if (err && err != -ENOTSUPP)
  return err;

 return 0;
}
