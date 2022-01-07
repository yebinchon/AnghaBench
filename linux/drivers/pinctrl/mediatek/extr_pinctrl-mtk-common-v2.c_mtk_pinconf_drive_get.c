
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_desc {size_t drv_n; } ;
struct mtk_drive_desc {int scal; int step; } ;


 int PINCTRL_PIN_REG_E4 ;
 int PINCTRL_PIN_REG_E8 ;
 struct mtk_drive_desc* mtk_drive ;
 int mtk_hw_get_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int*) ;

int mtk_pinconf_drive_get(struct mtk_pinctrl *hw,
     const struct mtk_pin_desc *desc, int *val)
{
 const struct mtk_drive_desc *tb;
 int err, val1, val2;

 tb = &mtk_drive[desc->drv_n];

 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_E4, &val1);
 if (err)
  return err;

 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_E8, &val2);
 if (err)
  return err;




 *val = (((val2 << 1) + val1) / tb->scal + 1) * tb->step;

 return 0;
}
