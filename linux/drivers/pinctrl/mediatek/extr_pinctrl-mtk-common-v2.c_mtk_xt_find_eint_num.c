
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* soc; } ;
struct TYPE_4__ {unsigned long eint_n; } ;
struct mtk_pin_desc {int number; TYPE_2__ eint; } ;
struct TYPE_3__ {int npins; scalar_t__ pins; } ;


 int EINT_NA ;

__attribute__((used)) static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
{
 const struct mtk_pin_desc *desc;
 int i = 0;

 desc = (const struct mtk_pin_desc *)hw->soc->pins;

 while (i < hw->soc->npins) {
  if (desc[i].eint.eint_n == eint_n)
   return desc[i].number;
  i++;
 }

 return EINT_NA;
}
