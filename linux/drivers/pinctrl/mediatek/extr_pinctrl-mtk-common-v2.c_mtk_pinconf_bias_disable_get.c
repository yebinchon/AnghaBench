
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_desc {int dummy; } ;


 int EINVAL ;
 int MTK_ENABLE ;
 int PINCTRL_PIN_REG_PD ;
 int PINCTRL_PIN_REG_PU ;
 int mtk_hw_get_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int*) ;

int mtk_pinconf_bias_disable_get(struct mtk_pinctrl *hw,
     const struct mtk_pin_desc *desc, int *res)
{
 int v, v2;
 int err;

 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_PU, &v);
 if (err)
  return err;

 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_PD, &v2);
 if (err)
  return err;

 if (v == MTK_ENABLE || v2 == MTK_ENABLE)
  return -EINVAL;

 *res = 1;

 return 0;
}
