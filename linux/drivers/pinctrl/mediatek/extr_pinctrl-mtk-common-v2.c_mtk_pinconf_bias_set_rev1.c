
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_desc {int dummy; } ;


 int MTK_ENABLE ;
 int MTK_PULLDOWN ;
 int MTK_PULLUP ;
 int PINCTRL_PIN_REG_PULLEN ;
 int PINCTRL_PIN_REG_PULLSEL ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int) ;

int mtk_pinconf_bias_set_rev1(struct mtk_pinctrl *hw,
         const struct mtk_pin_desc *desc, bool pullup)
{
 int err, arg;

 arg = pullup ? MTK_PULLUP : MTK_PULLDOWN;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_PULLEN,
          MTK_ENABLE);
 if (err)
  return err;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_PULLSEL, arg);
 if (err)
  return err;

 return 0;
}
