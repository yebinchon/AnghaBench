
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u32 ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_8__ {struct device_node* of_node; TYPE_5__* parent; } ;
struct pic32_gpio_bank {int irq_chip; TYPE_1__ gpio_chip; int clk; int reg_base; } ;
struct device_node {int dummy; } ;


 size_t ARRAY_SIZE (struct pic32_gpio_bank*) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int devm_clk_get (TYPE_5__*,int *) ;
 int devm_ioremap_resource (TYPE_5__*,struct resource*) ;
 int gpiochip_add_data (TYPE_1__*,struct pic32_gpio_bank*) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_1__*) ;
 int gpiochip_set_chained_irqchip (TYPE_1__*,int *,int,int ) ;
 int handle_level_irq ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,size_t*) ;
 struct pic32_gpio_bank* pic32_gpio_banks ;
 int pic32_gpio_irq_handler ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int pic32_gpio_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct pic32_gpio_bank *bank;
 u32 id;
 int irq, ret;
 struct resource *res;

 if (of_property_read_u32(np, "microchip,gpio-bank", &id)) {
  dev_err(&pdev->dev, "microchip,gpio-bank property not found\n");
  return -EINVAL;
 }

 if (id >= ARRAY_SIZE(pic32_gpio_banks)) {
  dev_err(&pdev->dev, "invalid microchip,gpio-bank property\n");
  return -EINVAL;
 }

 bank = &pic32_gpio_banks[id];

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 bank->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(bank->reg_base))
  return PTR_ERR(bank->reg_base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 bank->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(bank->clk)) {
  ret = PTR_ERR(bank->clk);
  dev_err(&pdev->dev, "clk get failed\n");
  return ret;
 }

 ret = clk_prepare_enable(bank->clk);
 if (ret) {
  dev_err(&pdev->dev, "clk enable failed\n");
  return ret;
 }

 bank->gpio_chip.parent = &pdev->dev;
 bank->gpio_chip.of_node = np;
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
         irq, pic32_gpio_irq_handler);

 return 0;
}
