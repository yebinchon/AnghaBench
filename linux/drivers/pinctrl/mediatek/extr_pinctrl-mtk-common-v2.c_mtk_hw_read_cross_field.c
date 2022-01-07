
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_field {int bitpos; scalar_t__ next; scalar_t__ offset; int index; } ;


 int BIT (int) ;
 int mtk_hw_bits_part (struct mtk_pin_field*,int*,int*) ;
 int mtk_r32 (struct mtk_pinctrl*,int ,scalar_t__) ;

__attribute__((used)) static void mtk_hw_read_cross_field(struct mtk_pinctrl *hw,
        struct mtk_pin_field *pf, int *value)
{
 int nbits_l, nbits_h, h, l;

 mtk_hw_bits_part(pf, &nbits_h, &nbits_l);

 l = (mtk_r32(hw, pf->index, pf->offset)
       >> pf->bitpos) & (BIT(nbits_l) - 1);
 h = (mtk_r32(hw, pf->index, pf->offset + pf->next))
       & (BIT(nbits_h) - 1);

 *value = (h << nbits_l) | l;
}
