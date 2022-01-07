
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {int nr_banks; struct samsung_pin_bank* pin_banks; } ;
struct TYPE_2__ {int base; } ;
struct gpio_chip {int label; int of_node; int * parent; int ngpio; int base; } ;
struct samsung_pin_bank {int name; int of_node; int nr_pins; TYPE_1__ grange; struct gpio_chip gpio_chip; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 int devm_gpiochip_add_data (int *,struct gpio_chip*,struct samsung_pin_bank*) ;
 struct gpio_chip samsung_gpiolib_chip ;

__attribute__((used)) static int samsung_gpiolib_register(struct platform_device *pdev,
        struct samsung_pinctrl_drv_data *drvdata)
{
 struct samsung_pin_bank *bank = drvdata->pin_banks;
 struct gpio_chip *gc;
 int ret;
 int i;

 for (i = 0; i < drvdata->nr_banks; ++i, ++bank) {
  bank->gpio_chip = samsung_gpiolib_chip;

  gc = &bank->gpio_chip;
  gc->base = bank->grange.base;
  gc->ngpio = bank->nr_pins;
  gc->parent = &pdev->dev;
  gc->of_node = bank->of_node;
  gc->label = bank->name;

  ret = devm_gpiochip_add_data(&pdev->dev, gc, bank);
  if (ret) {
   dev_err(&pdev->dev, "failed to register gpio_chip %s, error code: %d\n",
       gc->label, ret);
   return ret;
  }
 }

 return 0;
}
