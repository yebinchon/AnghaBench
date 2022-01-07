
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_desc {char* name; int npins; struct pinctrl_pin_desc* pins; int * confops; int * pmxops; int * pctlops; int owner; } ;
struct samsung_pinctrl_drv_data {int nr_pins; int pin_base; int nr_banks; int pctl_dev; struct samsung_pin_bank* pin_banks; struct pinctrl_desc pctl; } ;
struct TYPE_4__ {char* name; int id; int pin_base; int base; TYPE_1__* gc; int npins; } ;
struct TYPE_3__ {int ngpio; } ;
struct samsung_pin_bank {int nr_pins; char* name; int pin_base; TYPE_2__ grange; TYPE_1__ gpio_chip; } ;
struct platform_device {int dev; } ;
struct pinctrl_pin_desc {int number; char* name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PIN_NAME_LENGTH ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int array3_size (int,int ,int) ;
 int dev_err (int *,char*) ;
 struct pinctrl_pin_desc* devm_kcalloc (int *,int,int,int ) ;
 char* devm_kzalloc (int *,int ,int ) ;
 int devm_pinctrl_register (int *,struct pinctrl_desc*,struct samsung_pinctrl_drv_data*) ;
 int pinctrl_add_gpio_range (int ,TYPE_2__*) ;
 int samsung_pctrl_ops ;
 int samsung_pinconf_ops ;
 int samsung_pinctrl_parse_dt (struct platform_device*,struct samsung_pinctrl_drv_data*) ;
 int samsung_pinmux_ops ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static int samsung_pinctrl_register(struct platform_device *pdev,
        struct samsung_pinctrl_drv_data *drvdata)
{
 struct pinctrl_desc *ctrldesc = &drvdata->pctl;
 struct pinctrl_pin_desc *pindesc, *pdesc;
 struct samsung_pin_bank *pin_bank;
 char *pin_names;
 int pin, bank, ret;

 ctrldesc->name = "samsung-pinctrl";
 ctrldesc->owner = THIS_MODULE;
 ctrldesc->pctlops = &samsung_pctrl_ops;
 ctrldesc->pmxops = &samsung_pinmux_ops;
 ctrldesc->confops = &samsung_pinconf_ops;

 pindesc = devm_kcalloc(&pdev->dev,
          drvdata->nr_pins, sizeof(*pindesc),
          GFP_KERNEL);
 if (!pindesc)
  return -ENOMEM;
 ctrldesc->pins = pindesc;
 ctrldesc->npins = drvdata->nr_pins;


 for (pin = 0, pdesc = pindesc; pin < ctrldesc->npins; pin++, pdesc++)
  pdesc->number = pin + drvdata->pin_base;





 pin_names = devm_kzalloc(&pdev->dev,
     array3_size(sizeof(char), PIN_NAME_LENGTH,
          drvdata->nr_pins),
     GFP_KERNEL);
 if (!pin_names)
  return -ENOMEM;


 for (bank = 0; bank < drvdata->nr_banks; bank++) {
  pin_bank = &drvdata->pin_banks[bank];
  for (pin = 0; pin < pin_bank->nr_pins; pin++) {
   sprintf(pin_names, "%s-%d", pin_bank->name, pin);
   pdesc = pindesc + pin_bank->pin_base + pin;
   pdesc->name = pin_names;
   pin_names += PIN_NAME_LENGTH;
  }
 }

 ret = samsung_pinctrl_parse_dt(pdev, drvdata);
 if (ret)
  return ret;

 drvdata->pctl_dev = devm_pinctrl_register(&pdev->dev, ctrldesc,
        drvdata);
 if (IS_ERR(drvdata->pctl_dev)) {
  dev_err(&pdev->dev, "could not register pinctrl driver\n");
  return PTR_ERR(drvdata->pctl_dev);
 }

 for (bank = 0; bank < drvdata->nr_banks; ++bank) {
  pin_bank = &drvdata->pin_banks[bank];
  pin_bank->grange.name = pin_bank->name;
  pin_bank->grange.id = bank;
  pin_bank->grange.pin_base = drvdata->pin_base
      + pin_bank->pin_base;
  pin_bank->grange.base = pin_bank->grange.pin_base;
  pin_bank->grange.npins = pin_bank->gpio_chip.ngpio;
  pin_bank->grange.gc = &pin_bank->gpio_chip;
  pinctrl_add_gpio_range(drvdata->pctl_dev, &pin_bank->grange);
 }

 return 0;
}
