
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pinctrl_drv_data {int nr_banks; struct samsung_pin_bank* pin_banks; } ;
struct samsung_pin_bank {scalar_t__ eint_type; } ;


 scalar_t__ EINT_TYPE_GPIO ;
 int exynos_pinctrl_resume_bank (struct samsung_pinctrl_drv_data*,struct samsung_pin_bank*) ;

void exynos_pinctrl_resume(struct samsung_pinctrl_drv_data *drvdata)
{
 struct samsung_pin_bank *bank = drvdata->pin_banks;
 int i;

 for (i = 0; i < drvdata->nr_banks; ++i, ++bank)
  if (bank->eint_type == EINT_TYPE_GPIO)
   exynos_pinctrl_resume_bank(drvdata, bank);
}
