
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct pinctrl_pin_desc {int number; int name; } ;
struct at91_pinctrl {int nactive_banks; int pctl; } ;
struct TYPE_5__ {int npins; struct pinctrl_pin_desc* pins; int name; } ;
struct TYPE_4__ {int range; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_NB_GPIO_PER_BANK ;
 int PTR_ERR (int ) ;
 TYPE_2__ at91_pinctrl_desc ;
 int at91_pinctrl_probe_dt (struct platform_device*,struct at91_pinctrl*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,int,int) ;
 struct pinctrl_pin_desc* devm_kcalloc (int *,int,int,int ) ;
 int devm_kfree (int *,struct at91_pinctrl*) ;
 struct at91_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,TYPE_2__*,struct at91_pinctrl*) ;
 int gpio_banks ;
 TYPE_1__** gpio_chips ;
 int kasprintf (int ,char*,int,int) ;
 int pinctrl_add_gpio_range (int ,int *) ;
 int platform_set_drvdata (struct platform_device*,struct at91_pinctrl*) ;

__attribute__((used)) static int at91_pinctrl_probe(struct platform_device *pdev)
{
 struct at91_pinctrl *info;
 struct pinctrl_pin_desc *pdesc;
 int ret, i, j, k, ngpio_chips_enabled = 0;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 ret = at91_pinctrl_probe_dt(pdev, info);
 if (ret)
  return ret;






 for (i = 0; i < gpio_banks; i++)
  if (gpio_chips[i])
   ngpio_chips_enabled++;

 if (ngpio_chips_enabled < info->nactive_banks) {
  dev_warn(&pdev->dev,
    "All GPIO chips are not registered yet (%d/%d)\n",
    ngpio_chips_enabled, info->nactive_banks);
  devm_kfree(&pdev->dev, info);
  return -EPROBE_DEFER;
 }

 at91_pinctrl_desc.name = dev_name(&pdev->dev);
 at91_pinctrl_desc.npins = gpio_banks * MAX_NB_GPIO_PER_BANK;
 at91_pinctrl_desc.pins = pdesc =
  devm_kcalloc(&pdev->dev,
        at91_pinctrl_desc.npins, sizeof(*pdesc),
        GFP_KERNEL);

 if (!at91_pinctrl_desc.pins)
  return -ENOMEM;

 for (i = 0, k = 0; i < gpio_banks; i++) {
  for (j = 0; j < MAX_NB_GPIO_PER_BANK; j++, k++) {
   pdesc->number = k;
   pdesc->name = kasprintf(GFP_KERNEL, "pio%c%d", i + 'A', j);
   pdesc++;
  }
 }

 platform_set_drvdata(pdev, info);
 info->pctl = devm_pinctrl_register(&pdev->dev, &at91_pinctrl_desc,
        info);

 if (IS_ERR(info->pctl)) {
  dev_err(&pdev->dev, "could not register AT91 pinctrl driver\n");
  return PTR_ERR(info->pctl);
 }


 for (i = 0; i < gpio_banks; i++)
  if (gpio_chips[i])
   pinctrl_add_gpio_range(info->pctl, &gpio_chips[i]->range);

 dev_info(&pdev->dev, "initialized AT91 pinctrl driver\n");

 return 0;
}
