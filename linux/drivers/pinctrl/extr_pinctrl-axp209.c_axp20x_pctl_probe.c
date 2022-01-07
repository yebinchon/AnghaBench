
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_desc {int * pmxops; int * pctlops; int npins; TYPE_1__* pins; void* owner; void* name; } ;
struct TYPE_7__ {int base; int can_sleep; int ngpio; int direction_output; int direction_input; int set; int get_direction; int get; void* owner; void* label; struct device* parent; int free; int request; } ;
struct axp20x_pctl {TYPE_2__* desc; TYPE_3__ chip; int pctl_dev; struct device* dev; int regmap; } ;
struct axp20x_dev {int regmap; } ;
struct TYPE_6__ {int npins; TYPE_1__* pins; } ;
struct TYPE_5__ {int number; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* THIS_MODULE ;
 int axp20x_build_funcs_groups (struct platform_device*) ;
 int axp20x_gpio_get ;
 int axp20x_gpio_get_direction ;
 int axp20x_gpio_input ;
 int axp20x_gpio_output ;
 int axp20x_gpio_set ;
 int axp20x_pctrl_ops ;
 int axp20x_pmx_ops ;
 int dev_err (struct device*,char*) ;
 struct axp20x_dev* dev_get_drvdata (int ) ;
 int dev_info (struct device*,char*) ;
 void* dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_3__*,struct axp20x_pctl*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_register (struct device*,struct pinctrl_desc*,struct axp20x_pctl*) ;
 int gpiochip_add_pin_range (TYPE_3__*,void*,int ,int ,int ) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 int of_device_is_available (int ) ;
 int platform_set_drvdata (struct platform_device*,struct axp20x_pctl*) ;

__attribute__((used)) static int axp20x_pctl_probe(struct platform_device *pdev)
{
 struct axp20x_dev *axp20x = dev_get_drvdata(pdev->dev.parent);
 struct axp20x_pctl *pctl;
 struct device *dev = &pdev->dev;
 struct pinctrl_desc *pctrl_desc;
 int ret;

 if (!of_device_is_available(pdev->dev.of_node))
  return -ENODEV;

 if (!axp20x) {
  dev_err(&pdev->dev, "Parent drvdata not set\n");
  return -EINVAL;
 }

 pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
 if (!pctl)
  return -ENOMEM;

 pctl->chip.base = -1;
 pctl->chip.can_sleep = 1;
 pctl->chip.request = gpiochip_generic_request;
 pctl->chip.free = gpiochip_generic_free;
 pctl->chip.parent = &pdev->dev;
 pctl->chip.label = dev_name(&pdev->dev);
 pctl->chip.owner = THIS_MODULE;
 pctl->chip.get = axp20x_gpio_get;
 pctl->chip.get_direction = axp20x_gpio_get_direction;
 pctl->chip.set = axp20x_gpio_set;
 pctl->chip.direction_input = axp20x_gpio_input;
 pctl->chip.direction_output = axp20x_gpio_output;

 pctl->desc = of_device_get_match_data(dev);

 pctl->chip.ngpio = pctl->desc->npins;

 pctl->regmap = axp20x->regmap;
 pctl->dev = &pdev->dev;

 platform_set_drvdata(pdev, pctl);

 ret = axp20x_build_funcs_groups(pdev);
 if (ret) {
  dev_err(&pdev->dev, "failed to build groups\n");
  return ret;
 }

 pctrl_desc = devm_kzalloc(&pdev->dev, sizeof(*pctrl_desc), GFP_KERNEL);
 if (!pctrl_desc)
  return -ENOMEM;

 pctrl_desc->name = dev_name(&pdev->dev);
 pctrl_desc->owner = THIS_MODULE;
 pctrl_desc->pins = pctl->desc->pins;
 pctrl_desc->npins = pctl->desc->npins;
 pctrl_desc->pctlops = &axp20x_pctrl_ops;
 pctrl_desc->pmxops = &axp20x_pmx_ops;

 pctl->pctl_dev = devm_pinctrl_register(&pdev->dev, pctrl_desc, pctl);
 if (IS_ERR(pctl->pctl_dev)) {
  dev_err(&pdev->dev, "couldn't register pinctrl driver\n");
  return PTR_ERR(pctl->pctl_dev);
 }

 ret = devm_gpiochip_add_data(&pdev->dev, &pctl->chip, pctl);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register GPIO chip\n");
  return ret;
 }

 ret = gpiochip_add_pin_range(&pctl->chip, dev_name(&pdev->dev),
         pctl->desc->pins->number,
         pctl->desc->pins->number,
         pctl->desc->npins);
 if (ret) {
  dev_err(&pdev->dev, "failed to add pin range\n");
  return ret;
 }

 dev_info(&pdev->dev, "AXP209 pinctrl and GPIO driver loaded\n");

 return 0;
}
