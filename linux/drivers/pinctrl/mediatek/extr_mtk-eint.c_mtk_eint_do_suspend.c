
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eint {int wake_mask; int base; } ;


 int mtk_eint_chip_write_mask (struct mtk_eint*,int ,int ) ;

int mtk_eint_do_suspend(struct mtk_eint *eint)
{
 mtk_eint_chip_write_mask(eint, eint->base, eint->wake_mask);

 return 0;
}
