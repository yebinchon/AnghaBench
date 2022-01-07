
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eint {int cur_mask; int base; } ;


 int mtk_eint_chip_write_mask (struct mtk_eint*,int ,int ) ;

int mtk_eint_do_resume(struct mtk_eint *eint)
{
 mtk_eint_chip_write_mask(eint, eint->base, eint->cur_mask);

 return 0;
}
