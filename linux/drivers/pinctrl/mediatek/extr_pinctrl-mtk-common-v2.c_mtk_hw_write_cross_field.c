
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_field {int mask; int bitpos; scalar_t__ next; scalar_t__ offset; int index; } ;


 int BIT (int) ;
 int mtk_hw_bits_part (struct mtk_pin_field*,int*,int*) ;
 int mtk_rmw (struct mtk_pinctrl*,int ,scalar_t__,int,int) ;

__attribute__((used)) static void mtk_hw_write_cross_field(struct mtk_pinctrl *hw,
         struct mtk_pin_field *pf, int value)
{
 int nbits_l, nbits_h;

 mtk_hw_bits_part(pf, &nbits_h, &nbits_l);

 mtk_rmw(hw, pf->index, pf->offset, pf->mask << pf->bitpos,
  (value & pf->mask) << pf->bitpos);

 mtk_rmw(hw, pf->index, pf->offset + pf->next, BIT(nbits_h) - 1,
  (value & pf->mask) >> nbits_l);
}
