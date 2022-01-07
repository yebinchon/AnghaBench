
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_desc {int dummy; } ;


 int MTK_DISABLE ;
 int PINCTRL_PIN_REG_PULLEN ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int ) ;

int mtk_pinconf_bias_disable_set_rev1(struct mtk_pinctrl *hw,
          const struct mtk_pin_desc *desc)
{
 int err;

 err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_PULLEN,
          MTK_DISABLE);
 if (err)
  return err;

 return 0;
}
