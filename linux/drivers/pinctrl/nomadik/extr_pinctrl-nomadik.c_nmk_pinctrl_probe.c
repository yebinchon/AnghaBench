
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct nmk_pinctrl {struct nmk_gpio_chip* pctl; TYPE_1__* dev; TYPE_2__* soc; int prcm_base; } ;
struct nmk_gpio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int npins; int pins; } ;
struct TYPE_12__ {int npins; int pins; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct nmk_gpio_chip*) ;
 int NMK_MAX_BANKS ;
 unsigned int PINCTRL_NMK_DB8500 ;
 unsigned int PINCTRL_NMK_DB8540 ;
 unsigned int PINCTRL_NMK_STN8815 ;
 int PTR_ERR (struct nmk_gpio_chip*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,...) ;
 struct nmk_pinctrl* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct nmk_gpio_chip* devm_pinctrl_register (TYPE_1__*,TYPE_3__*,struct nmk_pinctrl*) ;
 struct nmk_gpio_chip* nmk_gpio_populate_chip (struct device_node*,struct platform_device*) ;
 int nmk_pinctrl_db8500_init (TYPE_2__**) ;
 int nmk_pinctrl_db8540_init (TYPE_2__**) ;
 TYPE_3__ nmk_pinctrl_desc ;
 int nmk_pinctrl_match ;
 int nmk_pinctrl_stn8815_init (TYPE_2__**) ;
 int of_iomap (struct device_node*,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int platform_set_drvdata (struct platform_device*,struct nmk_pinctrl*) ;

__attribute__((used)) static int nmk_pinctrl_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct device_node *np = pdev->dev.of_node;
 struct device_node *prcm_np;
 struct nmk_pinctrl *npct;
 unsigned int version = 0;
 int i;

 npct = devm_kzalloc(&pdev->dev, sizeof(*npct), GFP_KERNEL);
 if (!npct)
  return -ENOMEM;

 match = of_match_device(nmk_pinctrl_match, &pdev->dev);
 if (!match)
  return -ENODEV;
 version = (unsigned int) match->data;


 if (version == PINCTRL_NMK_STN8815)
  nmk_pinctrl_stn8815_init(&npct->soc);
 if (version == PINCTRL_NMK_DB8500)
  nmk_pinctrl_db8500_init(&npct->soc);
 if (version == PINCTRL_NMK_DB8540)
  nmk_pinctrl_db8540_init(&npct->soc);
 for (i = 0; i < NMK_MAX_BANKS; i++) {
  struct device_node *gpio_np;
  struct nmk_gpio_chip *nmk_chip;

  gpio_np = of_parse_phandle(np, "nomadik-gpio-chips", i);
  if (gpio_np) {
   dev_info(&pdev->dev,
     "populate NMK GPIO %d \"%pOFn\"\n",
     i, gpio_np);
   nmk_chip = nmk_gpio_populate_chip(gpio_np, pdev);
   if (IS_ERR(nmk_chip))
    dev_err(&pdev->dev,
     "could not populate nmk chip struct "
     "- continue anyway\n");
   of_node_put(gpio_np);
  }
 }

 prcm_np = of_parse_phandle(np, "prcm", 0);
 if (prcm_np)
  npct->prcm_base = of_iomap(prcm_np, 0);
 if (!npct->prcm_base) {
  if (version == PINCTRL_NMK_STN8815) {
   dev_info(&pdev->dev,
     "No PRCM base, "
     "assuming no ALT-Cx control is available\n");
  } else {
   dev_err(&pdev->dev, "missing PRCM base address\n");
   return -EINVAL;
  }
 }

 nmk_pinctrl_desc.pins = npct->soc->pins;
 nmk_pinctrl_desc.npins = npct->soc->npins;
 npct->dev = &pdev->dev;

 npct->pctl = devm_pinctrl_register(&pdev->dev, &nmk_pinctrl_desc, npct);
 if (IS_ERR(npct->pctl)) {
  dev_err(&pdev->dev, "could not register Nomadik pinctrl driver\n");
  return PTR_ERR(npct->pctl);
 }

 platform_set_drvdata(pdev, npct);
 dev_info(&pdev->dev, "initialized Nomadik pin control driver\n");

 return 0;
}
