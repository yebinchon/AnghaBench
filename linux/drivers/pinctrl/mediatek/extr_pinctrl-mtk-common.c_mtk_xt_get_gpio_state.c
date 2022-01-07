
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {int chip; } ;
struct TYPE_2__ {int number; } ;
struct mtk_desc_pin {TYPE_1__ pin; } ;


 int EINVAL ;
 struct mtk_desc_pin* mtk_find_pin_by_eint_num (struct mtk_pinctrl*,unsigned long) ;
 int mtk_gpio_get (int ,int ) ;

__attribute__((used)) static int mtk_xt_get_gpio_state(void *data, unsigned long eint_n)
{
 struct mtk_pinctrl *pctl = (struct mtk_pinctrl *)data;
 const struct mtk_desc_pin *pin;

 pin = mtk_find_pin_by_eint_num(pctl, eint_n);
 if (!pin)
  return -EINVAL;

 return mtk_gpio_get(pctl->chip, pin->pin.number);
}
