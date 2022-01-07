
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int id; } ;
struct gpio_chip {int can_sleep; struct device_node* of_node; scalar_t__ ngpio; scalar_t__ base; int owner; int dbg_show; int set; int direction_output; int get; int direction_input; int get_direction; int free; int request; } ;
struct irq_chip {int name; int flags; int irq_shutdown; int irq_startup; int irq_set_wake; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct nmk_gpio_chip {int parent_irq; int latent_parent_irq; int sleepmode; scalar_t__ addr; struct gpio_chip chip; int clk; int lowemi; struct irq_chip irqchip; int lock; int bank; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int IRQCHIP_MASK_ON_SUSPEND ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (struct nmk_gpio_chip*) ;
 scalar_t__ NMK_GPIO_LOWEMI ;
 int PTR_ERR (struct nmk_gpio_chip*) ;
 int THIS_MODULE ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,scalar_t__) ;
 int gpiochip_add_data (struct gpio_chip*,struct nmk_gpio_chip*) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int gpiochip_irqchip_add (struct gpio_chip*,struct irq_chip*,int ,int ,int ) ;
 int gpiochip_remove (struct gpio_chip*) ;
 int gpiochip_set_chained_irqchip (struct gpio_chip*,struct irq_chip*,int,int ) ;
 int handle_edge_irq ;
 int kasprintf (int ,char*,int ,scalar_t__,scalar_t__) ;
 int nmk_gpio_dbg_show ;
 int nmk_gpio_get_dir ;
 int nmk_gpio_get_input ;
 int nmk_gpio_irq_ack ;
 int nmk_gpio_irq_handler ;
 int nmk_gpio_irq_mask ;
 int nmk_gpio_irq_set_type ;
 int nmk_gpio_irq_set_wake ;
 int nmk_gpio_irq_shutdown ;
 int nmk_gpio_irq_startup ;
 int nmk_gpio_irq_unmask ;
 int nmk_gpio_latent_irq_handler ;
 int nmk_gpio_make_input ;
 int nmk_gpio_make_output ;
 struct nmk_gpio_chip* nmk_gpio_populate_chip (struct device_node*,struct platform_device*) ;
 int nmk_gpio_set_output ;
 int of_property_read_bool (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct nmk_gpio_chip*) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nmk_gpio_probe(struct platform_device *dev)
{
 struct device_node *np = dev->dev.of_node;
 struct nmk_gpio_chip *nmk_chip;
 struct gpio_chip *chip;
 struct irq_chip *irqchip;
 int latent_irq;
 bool supports_sleepmode;
 int irq;
 int ret;

 nmk_chip = nmk_gpio_populate_chip(np, dev);
 if (IS_ERR(nmk_chip)) {
  dev_err(&dev->dev, "could not populate nmk chip struct\n");
  return PTR_ERR(nmk_chip);
 }

 supports_sleepmode =
  of_property_read_bool(np, "st,supports-sleepmode");


 dev->id = nmk_chip->bank;

 irq = platform_get_irq(dev, 0);
 if (irq < 0)
  return irq;


 latent_irq = platform_get_irq(dev, 1);





 nmk_chip->parent_irq = irq;
 nmk_chip->latent_parent_irq = latent_irq;
 nmk_chip->sleepmode = supports_sleepmode;
 spin_lock_init(&nmk_chip->lock);

 chip = &nmk_chip->chip;
 chip->request = gpiochip_generic_request;
 chip->free = gpiochip_generic_free;
 chip->get_direction = nmk_gpio_get_dir;
 chip->direction_input = nmk_gpio_make_input;
 chip->get = nmk_gpio_get_input;
 chip->direction_output = nmk_gpio_make_output;
 chip->set = nmk_gpio_set_output;
 chip->dbg_show = nmk_gpio_dbg_show;
 chip->can_sleep = 0;
 chip->owner = THIS_MODULE;

 irqchip = &nmk_chip->irqchip;
 irqchip->irq_ack = nmk_gpio_irq_ack;
 irqchip->irq_mask = nmk_gpio_irq_mask;
 irqchip->irq_unmask = nmk_gpio_irq_unmask;
 irqchip->irq_set_type = nmk_gpio_irq_set_type;
 irqchip->irq_set_wake = nmk_gpio_irq_set_wake;
 irqchip->irq_startup = nmk_gpio_irq_startup;
 irqchip->irq_shutdown = nmk_gpio_irq_shutdown;
 irqchip->flags = IRQCHIP_MASK_ON_SUSPEND;
 irqchip->name = kasprintf(GFP_KERNEL, "nmk%u-%u-%u",
      dev->id,
      chip->base,
      chip->base + chip->ngpio - 1);

 clk_enable(nmk_chip->clk);
 nmk_chip->lowemi = readl_relaxed(nmk_chip->addr + NMK_GPIO_LOWEMI);
 clk_disable(nmk_chip->clk);
 chip->of_node = np;

 ret = gpiochip_add_data(chip, nmk_chip);
 if (ret)
  return ret;

 platform_set_drvdata(dev, nmk_chip);






 ret = gpiochip_irqchip_add(chip,
       irqchip,
       0,
       handle_edge_irq,
       IRQ_TYPE_NONE);
 if (ret) {
  dev_err(&dev->dev, "could not add irqchip\n");
  gpiochip_remove(&nmk_chip->chip);
  return -ENODEV;
 }

 gpiochip_set_chained_irqchip(chip,
         irqchip,
         nmk_chip->parent_irq,
         nmk_gpio_irq_handler);
 if (nmk_chip->latent_parent_irq > 0)
  gpiochip_set_chained_irqchip(chip,
          irqchip,
          nmk_chip->latent_parent_irq,
          nmk_gpio_latent_irq_handler);

 dev_info(&dev->dev, "at address %p\n", nmk_chip->addr);

 return 0;
}
