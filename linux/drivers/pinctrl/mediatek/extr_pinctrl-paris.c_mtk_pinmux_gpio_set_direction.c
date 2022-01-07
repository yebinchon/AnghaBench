
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct TYPE_2__ {int * pins; } ;


 int PINCTRL_PIN_REG_DIR ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pinmux_gpio_set_direction(struct pinctrl_dev *pctldev,
      struct pinctrl_gpio_range *range,
      unsigned int pin, bool input)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 const struct mtk_pin_desc *desc;

 desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];


 return mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR, !input);
}
