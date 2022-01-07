
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct TYPE_4__ {unsigned int eintnum; } ;
struct mtk_desc_pin {TYPE_2__ eint; } ;
struct TYPE_3__ {int npins; struct mtk_desc_pin* pins; } ;



__attribute__((used)) static const struct mtk_desc_pin *
mtk_find_pin_by_eint_num(struct mtk_pinctrl *pctl, unsigned int eint_num)
{
 int i;
 const struct mtk_desc_pin *pin;

 for (i = 0; i < pctl->devdata->npins; i++) {
  pin = pctl->devdata->pins + i;
  if (pin->eint.eintnum == eint_num)
   return pin;
 }

 return ((void*)0);
}
