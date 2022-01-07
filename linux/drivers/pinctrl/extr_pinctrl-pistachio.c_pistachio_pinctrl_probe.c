
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct pistachio_pinctrl {int pctldev; void* npins; void* pins; void* nbanks; void* gpio_banks; void* ngroups; void* groups; void* nfunctions; void* functions; int base; int * dev; } ;
struct TYPE_3__ {void* npins; void* pins; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct pistachio_pinctrl*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct pistachio_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,TYPE_1__*,struct pistachio_pinctrl*) ;
 void* pistachio_functions ;
 void* pistachio_gpio_banks ;
 int pistachio_gpio_register (struct pistachio_pinctrl*) ;
 void* pistachio_groups ;
 TYPE_1__ pistachio_pinctrl_desc ;
 void* pistachio_pins ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int pistachio_pinctrl_probe(struct platform_device *pdev)
{
 struct pistachio_pinctrl *pctl;
 struct resource *res;

 pctl = devm_kzalloc(&pdev->dev, sizeof(*pctl), GFP_KERNEL);
 if (!pctl)
  return -ENOMEM;
 pctl->dev = &pdev->dev;
 dev_set_drvdata(&pdev->dev, pctl);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pctl->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pctl->base))
  return PTR_ERR(pctl->base);

 pctl->pins = pistachio_pins;
 pctl->npins = ARRAY_SIZE(pistachio_pins);
 pctl->functions = pistachio_functions;
 pctl->nfunctions = ARRAY_SIZE(pistachio_functions);
 pctl->groups = pistachio_groups;
 pctl->ngroups = ARRAY_SIZE(pistachio_groups);
 pctl->gpio_banks = pistachio_gpio_banks;
 pctl->nbanks = ARRAY_SIZE(pistachio_gpio_banks);

 pistachio_pinctrl_desc.pins = pctl->pins;
 pistachio_pinctrl_desc.npins = pctl->npins;

 pctl->pctldev = devm_pinctrl_register(&pdev->dev, &pistachio_pinctrl_desc,
           pctl);
 if (IS_ERR(pctl->pctldev)) {
  dev_err(&pdev->dev, "Failed to register pinctrl device\n");
  return PTR_ERR(pctl->pctldev);
 }

 return pistachio_gpio_register(pctl);
}
