
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_pinctrl {int nbase; int dev; TYPE_1__* soc; } ;
struct mtk_pin_reg_calc {int nranges; struct mtk_pin_field_calc* range; } ;
struct mtk_pin_field_calc {scalar_t__ s_pin; scalar_t__ e_pin; int i_base; int s_bit; int x_bits; int x_addrs; int sz_reg; scalar_t__ s_addr; scalar_t__ fixed; } ;
struct mtk_pin_field {int index; int bitpos; int mask; int next; scalar_t__ offset; } ;
struct mtk_pin_desc {scalar_t__ number; int name; } ;
struct TYPE_2__ {struct mtk_pin_reg_calc* reg_cal; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int dev_dbg (int ,char*,int,scalar_t__,int ) ;
 int dev_err (int ,char*,int,scalar_t__,int ) ;

__attribute__((used)) static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
       const struct mtk_pin_desc *desc,
       int field, struct mtk_pin_field *pfd)
{
 const struct mtk_pin_field_calc *c, *e;
 const struct mtk_pin_reg_calc *rc;
 u32 bits;

 if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
  rc = &hw->soc->reg_cal[field];
 } else {
  dev_dbg(hw->dev,
   "Not support field %d for pin %d (%s)\n",
   field, desc->number, desc->name);
  return -ENOTSUPP;
 }

 c = rc->range;
 e = c + rc->nranges;

 while (c < e) {
  if (desc->number >= c->s_pin && desc->number <= c->e_pin)
   break;
  c++;
 }

 if (c >= e) {
  dev_dbg(hw->dev, "Not support field %d for pin = %d (%s)\n",
   field, desc->number, desc->name);
  return -ENOTSUPP;
 }

 if (c->i_base > hw->nbase - 1) {
  dev_err(hw->dev,
   "Invalid base for field %d for pin = %d (%s)\n",
   field, desc->number, desc->name);
  return -EINVAL;
 }





 bits = c->fixed ? c->s_bit : c->s_bit +
        (desc->number - c->s_pin) * (c->x_bits);




 pfd->index = c->i_base;
 pfd->offset = c->s_addr + c->x_addrs * (bits / c->sz_reg);
 pfd->bitpos = bits % c->sz_reg;
 pfd->mask = (1 << c->x_bits) - 1;





 pfd->next = pfd->bitpos + c->x_bits > c->sz_reg ? c->x_addrs : 0;

 return 0;
}
