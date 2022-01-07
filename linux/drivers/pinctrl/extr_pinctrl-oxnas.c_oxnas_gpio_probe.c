
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_7__ {unsigned int ngpio; struct device_node* of_node; TYPE_5__* parent; } ;
struct oxnas_gpio_bank {unsigned int id; int irq_chip; TYPE_1__ gpio_chip; int reg_base; } ;
struct of_phandle_args {unsigned int* args; } ;
struct device_node {int dummy; } ;


 unsigned int ARRAY_SIZE (struct oxnas_gpio_bank*) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 unsigned int PINS_PER_BANK ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int devm_ioremap_resource (TYPE_5__*,struct resource*) ;
 int gpiochip_add_data (TYPE_1__*,struct oxnas_gpio_bank*) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_1__*) ;
 int gpiochip_set_chained_irqchip (TYPE_1__*,int *,int,int ) ;
 int handle_level_irq ;
 scalar_t__ of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;
 struct oxnas_gpio_bank* oxnas_gpio_banks ;
 int oxnas_gpio_irq_handler ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int oxnas_gpio_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct of_phandle_args pinspec;
 struct oxnas_gpio_bank *bank;
 unsigned int id, ngpios;
 int irq, ret;
 struct resource *res;

 if (of_parse_phandle_with_fixed_args(np, "gpio-ranges",
          3, 0, &pinspec)) {
  dev_err(&pdev->dev, "gpio-ranges property not found\n");
  return -EINVAL;
 }

 id = pinspec.args[1] / PINS_PER_BANK;
 ngpios = pinspec.args[2];

 if (id >= ARRAY_SIZE(oxnas_gpio_banks)) {
  dev_err(&pdev->dev, "invalid gpio-ranges base arg\n");
  return -EINVAL;
 }

 if (ngpios > PINS_PER_BANK) {
  dev_err(&pdev->dev, "invalid gpio-ranges count arg\n");
  return -EINVAL;
 }

 bank = &oxnas_gpio_banks[id];

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 bank->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(bank->reg_base))
  return PTR_ERR(bank->reg_base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 bank->id = id;
 bank->gpio_chip.parent = &pdev->dev;
 bank->gpio_chip.of_node = np;
 bank->gpio_chip.ngpio = ngpios;
 ret = gpiochip_add_data(&bank->gpio_chip, bank);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to add GPIO chip %u: %d\n",
   id, ret);
  return ret;
 }

 ret = gpiochip_irqchip_add(&bank->gpio_chip, &bank->irq_chip,
    0, handle_level_irq, IRQ_TYPE_NONE);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to add IRQ chip %u: %d\n",
   id, ret);
  gpiochip_remove(&bank->gpio_chip);
  return ret;
 }

 gpiochip_set_chained_irqchip(&bank->gpio_chip, &bank->irq_chip,
         irq, oxnas_gpio_irq_handler);

 return 0;
}
