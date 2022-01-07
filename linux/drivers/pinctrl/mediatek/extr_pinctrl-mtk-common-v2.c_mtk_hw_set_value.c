
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_field {int mask; int bitpos; int offset; int index; int next; } ;
struct mtk_pin_desc {int dummy; } ;


 int mtk_hw_pin_field_get (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,struct mtk_pin_field*) ;
 int mtk_hw_write_cross_field (struct mtk_pinctrl*,struct mtk_pin_field*,int) ;
 int mtk_rmw (struct mtk_pinctrl*,int ,int ,int,int) ;

int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
       int field, int value)
{
 struct mtk_pin_field pf;
 int err;

 err = mtk_hw_pin_field_get(hw, desc, field, &pf);
 if (err)
  return err;

 if (!pf.next)
  mtk_rmw(hw, pf.index, pf.offset, pf.mask << pf.bitpos,
   (value & pf.mask) << pf.bitpos);
 else
  mtk_hw_write_cross_field(hw, &pf, value);

 return 0;
}
