
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_pin_desc {int number; char* name; } ;
struct of_device_id {struct atmel_pioctrl_data* data; } ;
struct atmel_pioctrl_data {int nbanks; } ;
struct atmel_pioctrl {int nbanks; int npins; char const** group_names; TYPE_2__* irq_domain; int clk; TYPE_5__* gpio_chip; int pinctrl_dev; int * irqs; void* pm_suspend_backup; void* pm_wakeup_sources; TYPE_1__** pins; struct atmel_group* groups; int reg_base; int node; struct device* dev; } ;
struct atmel_group {char const* name; int pin; } ;
struct TYPE_14__ {int npins; int custom_params; int num_custom_params; struct pinctrl_pin_desc* pins; } ;
struct TYPE_13__ {int ngpio; char const** names; struct device* parent; int label; int of_node; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {int pin_id; unsigned int bank; unsigned int line; } ;


 int ARRAY_SIZE (int ) ;
 unsigned int ATMEL_PIO_BANK (int) ;
 unsigned int ATMEL_PIO_LINE (int) ;
 int ATMEL_PIO_NPINS_PER_BANK ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atmel_custom_bindings ;
 TYPE_5__ atmel_gpio_chip ;
 int atmel_gpio_irq_chip ;
 int atmel_gpio_irq_handler ;
 int atmel_pctrl_of_match ;
 TYPE_8__ atmel_pinctrl_desc ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*,int,...) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_register (struct device*,TYPE_8__*,struct atmel_pioctrl*) ;
 int gpiochip_add_data (TYPE_5__*,struct atmel_pioctrl*) ;
 int gpiochip_add_pin_range (TYPE_5__*,int ,int ,int ,int) ;
 int gpiochip_remove (TYPE_5__*) ;
 int handle_simple_irq ;
 int irq_create_mapping (TYPE_2__*,int) ;
 TYPE_2__* irq_domain_add_linear (int ,int,int *,int *) ;
 int irq_domain_remove (TYPE_2__*) ;
 int irq_domain_simple_ops ;
 int irq_set_chained_handler (int ,int ) ;
 int irq_set_chip_and_handler (int,int *,int ) ;
 int irq_set_chip_data (int,struct atmel_pioctrl*) ;
 int irq_set_handler_data (int ,struct atmel_pioctrl*) ;
 char* kasprintf (int ,char*,unsigned int,unsigned int) ;
 struct of_device_id* of_match_node (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_pioctrl*) ;

__attribute__((used)) static int atmel_pinctrl_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct pinctrl_pin_desc *pin_desc;
 const char **group_names;
 const struct of_device_id *match;
 int i, ret;
 struct resource *res;
 struct atmel_pioctrl *atmel_pioctrl;
 const struct atmel_pioctrl_data *atmel_pioctrl_data;

 atmel_pioctrl = devm_kzalloc(dev, sizeof(*atmel_pioctrl), GFP_KERNEL);
 if (!atmel_pioctrl)
  return -ENOMEM;
 atmel_pioctrl->dev = dev;
 atmel_pioctrl->node = dev->of_node;
 platform_set_drvdata(pdev, atmel_pioctrl);

 match = of_match_node(atmel_pctrl_of_match, dev->of_node);
 if (!match) {
  dev_err(dev, "unknown compatible string\n");
  return -ENODEV;
 }
 atmel_pioctrl_data = match->data;
 atmel_pioctrl->nbanks = atmel_pioctrl_data->nbanks;
 atmel_pioctrl->npins = atmel_pioctrl->nbanks * ATMEL_PIO_NPINS_PER_BANK;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 atmel_pioctrl->reg_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(atmel_pioctrl->reg_base))
  return -EINVAL;

 atmel_pioctrl->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(atmel_pioctrl->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(atmel_pioctrl->clk);
 }

 atmel_pioctrl->pins = devm_kcalloc(dev,
        atmel_pioctrl->npins,
        sizeof(*atmel_pioctrl->pins),
        GFP_KERNEL);
 if (!atmel_pioctrl->pins)
  return -ENOMEM;

 pin_desc = devm_kcalloc(dev, atmel_pioctrl->npins, sizeof(*pin_desc),
    GFP_KERNEL);
 if (!pin_desc)
  return -ENOMEM;
 atmel_pinctrl_desc.pins = pin_desc;
 atmel_pinctrl_desc.npins = atmel_pioctrl->npins;
 atmel_pinctrl_desc.num_custom_params = ARRAY_SIZE(atmel_custom_bindings);
 atmel_pinctrl_desc.custom_params = atmel_custom_bindings;


 group_names = devm_kcalloc(dev,
       atmel_pioctrl->npins, sizeof(*group_names),
       GFP_KERNEL);
 if (!group_names)
  return -ENOMEM;
 atmel_pioctrl->group_names = group_names;

 atmel_pioctrl->groups = devm_kcalloc(&pdev->dev,
   atmel_pioctrl->npins, sizeof(*atmel_pioctrl->groups),
   GFP_KERNEL);
 if (!atmel_pioctrl->groups)
  return -ENOMEM;
 for (i = 0 ; i < atmel_pioctrl->npins; i++) {
  struct atmel_group *group = atmel_pioctrl->groups + i;
  unsigned bank = ATMEL_PIO_BANK(i);
  unsigned line = ATMEL_PIO_LINE(i);

  atmel_pioctrl->pins[i] = devm_kzalloc(dev,
    sizeof(**atmel_pioctrl->pins), GFP_KERNEL);
  if (!atmel_pioctrl->pins[i])
   return -ENOMEM;

  atmel_pioctrl->pins[i]->pin_id = i;
  atmel_pioctrl->pins[i]->bank = bank;
  atmel_pioctrl->pins[i]->line = line;

  pin_desc[i].number = i;

  pin_desc[i].name = kasprintf(GFP_KERNEL, "P%c%d",
          bank + 'A', line);

  group->name = group_names[i] = pin_desc[i].name;
  group->pin = pin_desc[i].number;

  dev_dbg(dev, "pin_id=%u, bank=%u, line=%u", i, bank, line);
 }

 atmel_pioctrl->gpio_chip = &atmel_gpio_chip;
 atmel_pioctrl->gpio_chip->of_node = dev->of_node;
 atmel_pioctrl->gpio_chip->ngpio = atmel_pioctrl->npins;
 atmel_pioctrl->gpio_chip->label = dev_name(dev);
 atmel_pioctrl->gpio_chip->parent = dev;
 atmel_pioctrl->gpio_chip->names = atmel_pioctrl->group_names;

 atmel_pioctrl->pm_wakeup_sources = devm_kcalloc(dev,
   atmel_pioctrl->nbanks,
   sizeof(*atmel_pioctrl->pm_wakeup_sources),
   GFP_KERNEL);
 if (!atmel_pioctrl->pm_wakeup_sources)
  return -ENOMEM;

 atmel_pioctrl->pm_suspend_backup = devm_kcalloc(dev,
   atmel_pioctrl->nbanks,
   sizeof(*atmel_pioctrl->pm_suspend_backup),
   GFP_KERNEL);
 if (!atmel_pioctrl->pm_suspend_backup)
  return -ENOMEM;

 atmel_pioctrl->irqs = devm_kcalloc(dev,
        atmel_pioctrl->nbanks,
        sizeof(*atmel_pioctrl->irqs),
        GFP_KERNEL);
 if (!atmel_pioctrl->irqs)
  return -ENOMEM;


 for (i = 0; i < atmel_pioctrl->nbanks; i++) {
  res = platform_get_resource(pdev, IORESOURCE_IRQ, i);
  if (!res) {
   dev_err(dev, "missing irq resource for group %c\n",
    'A' + i);
   return -EINVAL;
  }
  atmel_pioctrl->irqs[i] = res->start;
  irq_set_chained_handler(res->start, atmel_gpio_irq_handler);
  irq_set_handler_data(res->start, atmel_pioctrl);
  dev_dbg(dev, "bank %i: irq=%pr\n", i, res);
 }

 atmel_pioctrl->irq_domain = irq_domain_add_linear(dev->of_node,
   atmel_pioctrl->gpio_chip->ngpio,
   &irq_domain_simple_ops, ((void*)0));
 if (!atmel_pioctrl->irq_domain) {
  dev_err(dev, "can't add the irq domain\n");
  return -ENODEV;
 }
 atmel_pioctrl->irq_domain->name = "atmel gpio";

 for (i = 0; i < atmel_pioctrl->npins; i++) {
  int irq = irq_create_mapping(atmel_pioctrl->irq_domain, i);

  irq_set_chip_and_handler(irq, &atmel_gpio_irq_chip,
      handle_simple_irq);
  irq_set_chip_data(irq, atmel_pioctrl);
  dev_dbg(dev,
   "atmel gpio irq domain: hwirq: %d, linux irq: %d\n",
   i, irq);
 }

 ret = clk_prepare_enable(atmel_pioctrl->clk);
 if (ret) {
  dev_err(dev, "failed to prepare and enable clock\n");
  goto clk_prepare_enable_error;
 }

 atmel_pioctrl->pinctrl_dev = devm_pinctrl_register(&pdev->dev,
          &atmel_pinctrl_desc,
          atmel_pioctrl);
 if (IS_ERR(atmel_pioctrl->pinctrl_dev)) {
  ret = PTR_ERR(atmel_pioctrl->pinctrl_dev);
  dev_err(dev, "pinctrl registration failed\n");
  goto clk_unprep;
 }

 ret = gpiochip_add_data(atmel_pioctrl->gpio_chip, atmel_pioctrl);
 if (ret) {
  dev_err(dev, "failed to add gpiochip\n");
  goto clk_unprep;
 }

 ret = gpiochip_add_pin_range(atmel_pioctrl->gpio_chip, dev_name(dev),
         0, 0, atmel_pioctrl->gpio_chip->ngpio);
 if (ret) {
  dev_err(dev, "failed to add gpio pin range\n");
  goto gpiochip_add_pin_range_error;
 }

 dev_info(&pdev->dev, "atmel pinctrl initialized\n");

 return 0;

gpiochip_add_pin_range_error:
 gpiochip_remove(atmel_pioctrl->gpio_chip);

clk_unprep:
 clk_disable_unprepare(atmel_pioctrl->clk);

clk_prepare_enable_error:
 irq_domain_remove(atmel_pioctrl->irq_domain);

 return ret;
}
