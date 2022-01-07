
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_pinctrl {int pctl_dev; } ;
struct TYPE_3__ {int number; } ;
struct TYPE_4__ {int eintmux; } ;
struct mtk_desc_pin {TYPE_1__ pin; TYPE_2__ eint; } ;


 int EINVAL ;
 int PIN_CONFIG_INPUT_ENABLE ;
 struct mtk_desc_pin* mtk_find_pin_by_eint_num (struct mtk_pinctrl*,unsigned long) ;
 int mtk_pconf_set_ies_smt (struct mtk_pinctrl*,int ,int,int ) ;
 int mtk_pmx_gpio_set_direction (int ,int *,int ,int) ;
 int mtk_pmx_set_mode (int ,int ,int ) ;

__attribute__((used)) static int mtk_xt_set_gpio_as_eint(void *data, unsigned long eint_n)
{
 struct mtk_pinctrl *pctl = (struct mtk_pinctrl *)data;
 const struct mtk_desc_pin *pin;

 pin = mtk_find_pin_by_eint_num(pctl, eint_n);
 if (!pin)
  return -EINVAL;


 mtk_pmx_set_mode(pctl->pctl_dev, pin->pin.number, pin->eint.eintmux);

 mtk_pmx_gpio_set_direction(pctl->pctl_dev, ((void*)0), pin->pin.number,
       1);

 mtk_pconf_set_ies_smt(pctl, pin->pin.number, 1,
         PIN_CONFIG_INPUT_ENABLE);

 return 0;
}
