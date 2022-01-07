
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pinctrl_drv_data {int nr_banks; int pctl_dev; struct samsung_pin_bank* pin_banks; } ;
struct samsung_pin_bank {int grange; } ;
struct platform_device {int dummy; } ;


 int pinctrl_remove_gpio_range (int ,int *) ;

__attribute__((used)) static int samsung_pinctrl_unregister(struct platform_device *pdev,
          struct samsung_pinctrl_drv_data *drvdata)
{
 struct samsung_pin_bank *bank = drvdata->pin_banks;
 int i;

 for (i = 0; i < drvdata->nr_banks; ++i, ++bank)
  pinctrl_remove_gpio_range(drvdata->pctl_dev, &bank->grange);

 return 0;
}
