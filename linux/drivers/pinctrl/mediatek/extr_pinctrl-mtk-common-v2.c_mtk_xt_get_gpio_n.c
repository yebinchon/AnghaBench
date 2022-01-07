
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct mtk_pinctrl {struct gpio_chip chip; TYPE_1__* soc; } ;
struct TYPE_4__ {unsigned long eint_n; } ;
struct mtk_pin_desc {TYPE_2__ eint; } ;
struct TYPE_3__ {scalar_t__ pins; } ;


 unsigned int EINT_NA ;
 int EINVAL ;
 unsigned int mtk_xt_find_eint_num (struct mtk_pinctrl*,unsigned long) ;

__attribute__((used)) static int mtk_xt_get_gpio_n(void *data, unsigned long eint_n,
        unsigned int *gpio_n,
        struct gpio_chip **gpio_chip)
{
 struct mtk_pinctrl *hw = (struct mtk_pinctrl *)data;
 const struct mtk_pin_desc *desc;

 desc = (const struct mtk_pin_desc *)hw->soc->pins;
 *gpio_chip = &hw->chip;


 if (desc[eint_n].eint.eint_n == eint_n)
  *gpio_n = eint_n;
 else
  *gpio_n = mtk_xt_find_eint_num(hw, eint_n);

 return *gpio_n == EINT_NA ? -EINVAL : 0;
}
