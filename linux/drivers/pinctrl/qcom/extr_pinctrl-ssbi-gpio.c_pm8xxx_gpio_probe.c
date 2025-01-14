
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct pm8xxx_pin_data {int irq; int reg; } ;
struct TYPE_16__ {int base; int of_gpio_n_cells; uintptr_t ngpio; int label; int of_node; TYPE_7__* parent; } ;
struct TYPE_15__ {uintptr_t npins; int custom_conf_items; int custom_params; int num_custom_params; struct pinctrl_pin_desc* pins; } ;
struct pm8xxx_gpio {uintptr_t npins; int domain; TYPE_2__ chip; TYPE_7__* dev; int fwnode; int pctrl; TYPE_1__ desc; int regmap; } ;
struct TYPE_17__ {int of_node; int parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct pinctrl_pin_desc {int number; struct pm8xxx_pin_data* drv_data; int name; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SSBI_REG_ADDR_GPIO (int) ;
 int dev_dbg (TYPE_7__*,char*) ;
 int dev_err (TYPE_7__*,char*) ;
 int dev_get_regmap (int ,int *) ;
 int dev_name (TYPE_7__*) ;
 scalar_t__ device_get_match_data (TYPE_7__*) ;
 void* devm_kcalloc (TYPE_7__*,uintptr_t,int,int ) ;
 struct pm8xxx_gpio* devm_kzalloc (TYPE_7__*,int,int ) ;
 int devm_pinctrl_register (TYPE_7__*,TYPE_1__*,struct pm8xxx_gpio*) ;
 int gpiochip_add_data (TYPE_2__*,struct pm8xxx_gpio*) ;
 int gpiochip_add_pin_range (TYPE_2__*,int ,int ,int ,uintptr_t) ;
 int gpiochip_remove (TYPE_2__*) ;
 int irq_domain_create_hierarchy (struct irq_domain*,int ,uintptr_t,int ,int *,TYPE_2__*) ;
 int irq_domain_remove (int ) ;
 struct irq_domain* irq_find_host (struct device_node*) ;
 struct device_node* of_irq_find_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int of_node_to_fwnode (int ) ;
 int of_property_read_bool (int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct pm8xxx_gpio*) ;
 int pm8xxx_conf_items ;
 int pm8xxx_domain_ops ;
 int pm8xxx_gpio_bindings ;
 TYPE_2__ pm8xxx_gpio_template ;
 int * pm8xxx_groups ;
 int pm8xxx_pin_populate (struct pm8xxx_gpio*,struct pm8xxx_pin_data*) ;
 TYPE_1__ pm8xxx_pinctrl_desc ;

__attribute__((used)) static int pm8xxx_gpio_probe(struct platform_device *pdev)
{
 struct pm8xxx_pin_data *pin_data;
 struct irq_domain *parent_domain;
 struct device_node *parent_node;
 struct pinctrl_pin_desc *pins;
 struct pm8xxx_gpio *pctrl;
 int ret, i;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 pctrl->dev = &pdev->dev;
 pctrl->npins = (uintptr_t) device_get_match_data(&pdev->dev);

 pctrl->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!pctrl->regmap) {
  dev_err(&pdev->dev, "parent regmap unavailable\n");
  return -ENXIO;
 }

 pctrl->desc = pm8xxx_pinctrl_desc;
 pctrl->desc.npins = pctrl->npins;

 pins = devm_kcalloc(&pdev->dev,
       pctrl->desc.npins,
       sizeof(struct pinctrl_pin_desc),
       GFP_KERNEL);
 if (!pins)
  return -ENOMEM;

 pin_data = devm_kcalloc(&pdev->dev,
    pctrl->desc.npins,
    sizeof(struct pm8xxx_pin_data),
    GFP_KERNEL);
 if (!pin_data)
  return -ENOMEM;

 for (i = 0; i < pctrl->desc.npins; i++) {
  pin_data[i].reg = SSBI_REG_ADDR_GPIO(i);
  pin_data[i].irq = -1;

  ret = pm8xxx_pin_populate(pctrl, &pin_data[i]);
  if (ret)
   return ret;

  pins[i].number = i;
  pins[i].name = pm8xxx_groups[i];
  pins[i].drv_data = &pin_data[i];
 }
 pctrl->desc.pins = pins;

 pctrl->desc.num_custom_params = ARRAY_SIZE(pm8xxx_gpio_bindings);
 pctrl->desc.custom_params = pm8xxx_gpio_bindings;




 pctrl->pctrl = devm_pinctrl_register(&pdev->dev, &pctrl->desc, pctrl);
 if (IS_ERR(pctrl->pctrl)) {
  dev_err(&pdev->dev, "couldn't register pm8xxx gpio driver\n");
  return PTR_ERR(pctrl->pctrl);
 }

 pctrl->chip = pm8xxx_gpio_template;
 pctrl->chip.base = -1;
 pctrl->chip.parent = &pdev->dev;
 pctrl->chip.of_node = pdev->dev.of_node;
 pctrl->chip.of_gpio_n_cells = 2;
 pctrl->chip.label = dev_name(pctrl->dev);
 pctrl->chip.ngpio = pctrl->npins;

 parent_node = of_irq_find_parent(pctrl->dev->of_node);
 if (!parent_node)
  return -ENXIO;

 parent_domain = irq_find_host(parent_node);
 of_node_put(parent_node);
 if (!parent_domain)
  return -ENXIO;

 pctrl->fwnode = of_node_to_fwnode(pctrl->dev->of_node);
 pctrl->domain = irq_domain_create_hierarchy(parent_domain, 0,
          pctrl->chip.ngpio,
          pctrl->fwnode,
          &pm8xxx_domain_ops,
          &pctrl->chip);
 if (!pctrl->domain)
  return -ENODEV;

 ret = gpiochip_add_data(&pctrl->chip, pctrl);
 if (ret) {
  dev_err(&pdev->dev, "failed register gpiochip\n");
  goto err_chip_add_data;
 }
 if (!of_property_read_bool(pctrl->dev->of_node, "gpio-ranges")) {
  ret = gpiochip_add_pin_range(&pctrl->chip, dev_name(pctrl->dev),
          0, 0, pctrl->chip.ngpio);
  if (ret) {
   dev_err(pctrl->dev, "failed to add pin range\n");
   goto unregister_gpiochip;
  }
 }

 platform_set_drvdata(pdev, pctrl);

 dev_dbg(&pdev->dev, "Qualcomm pm8xxx gpio driver probed\n");

 return 0;

unregister_gpiochip:
 gpiochip_remove(&pctrl->chip);
err_chip_add_data:
 irq_domain_remove(pctrl->domain);

 return ret;
}
