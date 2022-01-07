
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_desc {int dummy; } ;


 int PINCTRL_PIN_REG_PD ;
 int PINCTRL_PIN_REG_PU ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int) ;

int mtk_pinconf_bias_set(struct mtk_pinctrl *hw,
    const struct mtk_pin_desc *desc, bool pullup)
{
 int err, arg;

 arg = pullup ? 1 : 2;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_PU, arg & 1);
 if (err)
  return err;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_PD,
          !!(arg & 2));
 if (err)
  return err;

 return 0;
}
