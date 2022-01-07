
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gpio_chip {int base; int ngpio; int of_gpio_n_cells; TYPE_1__* parent; struct device_node* of_node; int label; int set; int direction_output; int get; int direction_input; int free; int request; } ;
struct device_node {int name; } ;
struct atlas7_gpio_chip {int nbank; struct atlas7_gpio_bank* banks; struct gpio_chip chip; int lock; int reg; int clk; } ;
struct atlas7_gpio_bank {int gpio_offset; int irq; int base; } ;


 int ATLAS7_GPIO_BASE (struct atlas7_gpio_chip*,int) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 int IS_ERR (int ) ;
 int NGPIO_OF_BANK ;
 int atlas7_gpio_direction_input ;
 int atlas7_gpio_direction_output ;
 int atlas7_gpio_free ;
 int atlas7_gpio_get_value ;
 int atlas7_gpio_handle_irq ;
 int atlas7_gpio_irq_chip ;
 int atlas7_gpio_request ;
 int atlas7_gpio_set_value ;
 int banks ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*) ;
 struct atlas7_gpio_chip* devm_kzalloc (TYPE_1__*,int ,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct atlas7_gpio_chip*) ;
 int gpiochip_irqchip_add (struct gpio_chip*,int *,int ,int ,int ) ;
 int gpiochip_set_chained_irqchip (struct gpio_chip*,int *,int,int ) ;
 int handle_level_irq ;
 int kstrdup (int ,int ) ;
 int of_clk_get (struct device_node*,int ) ;
 int of_iomap (struct device_node*,int ) ;
 int of_irq_get (struct device_node*,int) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct atlas7_gpio_chip*) ;
 int raw_spin_lock_init (int *) ;
 int struct_size (struct atlas7_gpio_chip*,int ,int) ;

__attribute__((used)) static int atlas7_gpio_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct atlas7_gpio_chip *a7gc;
 struct gpio_chip *chip;
 u32 nbank;
 int ret, idx;

 ret = of_property_read_u32(np, "gpio-banks", &nbank);
 if (ret) {
  dev_err(&pdev->dev,
   "Could not find GPIO bank info,ret=%d!\n",
   ret);
  return ret;
 }


 a7gc = devm_kzalloc(&pdev->dev, struct_size(a7gc, banks, nbank),
       GFP_KERNEL);
 if (!a7gc)
  return -ENOMEM;


 a7gc->clk = of_clk_get(np, 0);
 if (!IS_ERR(a7gc->clk)) {
  ret = clk_prepare_enable(a7gc->clk);
  if (ret) {
   dev_err(&pdev->dev,
    "Could not enable clock!\n");
   return ret;
  }
 }


 a7gc->reg = of_iomap(np, 0);
 if (!a7gc->reg) {
  dev_err(&pdev->dev, "Could not map GPIO Registers!\n");
  return -ENOMEM;
 }

 a7gc->nbank = nbank;
 raw_spin_lock_init(&a7gc->lock);


 chip = &a7gc->chip;
 chip->request = atlas7_gpio_request;
 chip->free = atlas7_gpio_free;
 chip->direction_input = atlas7_gpio_direction_input;
 chip->get = atlas7_gpio_get_value;
 chip->direction_output = atlas7_gpio_direction_output;
 chip->set = atlas7_gpio_set_value;
 chip->base = -1;

 chip->ngpio = NGPIO_OF_BANK * nbank;
 chip->label = kstrdup(np->name, GFP_KERNEL);
 chip->of_node = np;
 chip->of_gpio_n_cells = 2;
 chip->parent = &pdev->dev;


 ret = gpiochip_add_data(chip, a7gc);
 if (ret) {
  dev_err(&pdev->dev,
   "%pOF: error in probe function with status %d\n",
   np, ret);
  goto failed;
 }


 ret = gpiochip_irqchip_add(chip, &atlas7_gpio_irq_chip,
   0, handle_level_irq, IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&pdev->dev,
   "could not connect irqchip to gpiochip\n");
  goto failed;
 }

 for (idx = 0; idx < nbank; idx++) {
  struct atlas7_gpio_bank *bank;

  bank = &a7gc->banks[idx];

  bank->base = ATLAS7_GPIO_BASE(a7gc, idx);
  bank->gpio_offset = idx * NGPIO_OF_BANK;


  ret = of_irq_get(np, idx);
  if (ret <= 0) {
   dev_err(&pdev->dev,
    "Unable to find IRQ number. ret=%d\n", ret);
   if (!ret)
    ret = -ENXIO;
   goto failed;
  }
  bank->irq = ret;

  gpiochip_set_chained_irqchip(chip, &atlas7_gpio_irq_chip,
     bank->irq, atlas7_gpio_handle_irq);
 }

 platform_set_drvdata(pdev, a7gc);
 dev_info(&pdev->dev, "add to system.\n");
 return 0;
failed:
 return ret;
}
