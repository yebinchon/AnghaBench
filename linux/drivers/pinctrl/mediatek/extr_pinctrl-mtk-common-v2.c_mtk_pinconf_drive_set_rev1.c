
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_desc {size_t drv_n; } ;
struct mtk_drive_desc {int min; int max; int step; int scal; } ;


 int ENOTSUPP ;
 int PINCTRL_PIN_REG_DRV ;
 struct mtk_drive_desc* mtk_drive ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int) ;

int mtk_pinconf_drive_set_rev1(struct mtk_pinctrl *hw,
          const struct mtk_pin_desc *desc, u32 arg)
{
 const struct mtk_drive_desc *tb;
 int err = -ENOTSUPP;

 tb = &mtk_drive[desc->drv_n];

 if ((arg >= tb->min && arg <= tb->max) && !(arg % tb->step)) {
  arg = (arg / tb->step - 1) * tb->scal;

  err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DRV,
           arg);
  if (err)
   return err;
 }

 return err;
}
