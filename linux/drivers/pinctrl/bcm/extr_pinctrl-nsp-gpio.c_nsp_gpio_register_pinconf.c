
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_pin_desc {int number; int name; } ;
struct pinctrl_desc {int npins; int * confops; struct pinctrl_pin_desc* pins; int * pctlops; int name; } ;
struct gpio_chip {int ngpio; } ;
struct nsp_gpio {int pctl; int dev; struct gpio_chip gc; struct pinctrl_desc pctldesc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*) ;
 int dev_name (int ) ;
 int devm_kasprintf (int ,int ,char*,int) ;
 struct pinctrl_pin_desc* devm_kcalloc (int ,int,int,int ) ;
 int devm_pinctrl_register (int ,struct pinctrl_desc*,struct nsp_gpio*) ;
 int nsp_pconf_ops ;
 int nsp_pctrl_ops ;

__attribute__((used)) static int nsp_gpio_register_pinconf(struct nsp_gpio *chip)
{
 struct pinctrl_desc *pctldesc = &chip->pctldesc;
 struct pinctrl_pin_desc *pins;
 struct gpio_chip *gc = &chip->gc;
 int i;

 pins = devm_kcalloc(chip->dev, gc->ngpio, sizeof(*pins), GFP_KERNEL);
 if (!pins)
  return -ENOMEM;
 for (i = 0; i < gc->ngpio; i++) {
  pins[i].number = i;
  pins[i].name = devm_kasprintf(chip->dev, GFP_KERNEL,
           "gpio-%d", i);
  if (!pins[i].name)
   return -ENOMEM;
 }
 pctldesc->name = dev_name(chip->dev);
 pctldesc->pctlops = &nsp_pctrl_ops;
 pctldesc->pins = pins;
 pctldesc->npins = gc->ngpio;
 pctldesc->confops = &nsp_pconf_ops;

 chip->pctl = devm_pinctrl_register(chip->dev, pctldesc, chip);
 if (IS_ERR(chip->pctl)) {
  dev_err(chip->dev, "unable to register pinctrl device\n");
  return PTR_ERR(chip->pctl);
 }

 return 0;
}
