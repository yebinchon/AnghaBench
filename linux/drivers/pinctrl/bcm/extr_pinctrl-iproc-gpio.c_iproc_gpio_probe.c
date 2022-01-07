
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_chip {char* name; void* irq_disable; void* irq_enable; int irq_set_type; void* irq_unmask; void* irq_mask; int irq_ack; } ;
struct gpio_irq_chip {int num_parents; int* parents; int handler; int default_type; int parent_handler; struct irq_chip* chip; } ;
struct gpio_chip {int base; int ngpio; struct gpio_irq_chip irq; int get; int set; int get_direction; int direction_output; int direction_input; int free; int request; int of_node; struct device* parent; int label; } ;
struct iproc_gpio {int io_ctrl_type; int num_banks; struct irq_chip irqchip; int pinmux_is_supported; struct gpio_chip gc; int lock; void* io_ctrl; void* base; struct device* dev; } ;
typedef enum iproc_pinconf_ctrl_type { ____Placeholder_iproc_pinconf_ctrl_type } iproc_pinconf_ctrl_type ;


 int BIT (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOCTRL_TYPE_AON ;
 int IOCTRL_TYPE_CDRU ;
 int IOCTRL_TYPE_INVALID ;
 int IORESOURCE_MEM ;
 int IPROC_PINCONF_DRIVE_STRENGTH ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (void*) ;
 int NGPIOS_PER_BANK ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 int* devm_kcalloc (struct device*,int,int,int ) ;
 struct iproc_gpio* devm_kzalloc (struct device*,int,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct iproc_gpio*) ;
 int gpiochip_remove (struct gpio_chip*) ;
 int handle_simple_irq ;
 int iproc_gpio_direction_input ;
 int iproc_gpio_direction_output ;
 int iproc_gpio_free ;
 int iproc_gpio_get ;
 int iproc_gpio_get_direction ;
 int iproc_gpio_irq_ack ;
 int iproc_gpio_irq_handler ;
 void* iproc_gpio_irq_mask ;
 int iproc_gpio_irq_set_type ;
 void* iproc_gpio_irq_unmask ;
 int iproc_gpio_register_pinconf (struct iproc_gpio*) ;
 int iproc_gpio_request ;
 int iproc_gpio_set ;
 int iproc_pinconf_disable_map_create (struct iproc_gpio*,int) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int of_property_read_bool (int ,char*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct iproc_gpio*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int iproc_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct iproc_gpio *chip;
 struct gpio_chip *gc;
 u32 ngpios, pinconf_disable_mask = 0;
 int irq, ret;
 bool no_pinconf = 0;
 enum iproc_pinconf_ctrl_type io_ctrl_type = IOCTRL_TYPE_INVALID;


 if (of_device_is_compatible(dev->of_node, "brcm,iproc-nsp-gpio"))
  pinconf_disable_mask = BIT(IPROC_PINCONF_DRIVE_STRENGTH);

 else if (of_device_is_compatible(dev->of_node,
      "brcm,iproc-stingray-gpio"))
  no_pinconf = 1;

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->dev = dev;
 platform_set_drvdata(pdev, chip);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 chip->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(chip->base)) {
  dev_err(dev, "unable to map I/O memory\n");
  return PTR_ERR(chip->base);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (res) {
  chip->io_ctrl = devm_ioremap_resource(dev, res);
  if (IS_ERR(chip->io_ctrl)) {
   dev_err(dev, "unable to map I/O memory\n");
   return PTR_ERR(chip->io_ctrl);
  }
  if (of_device_is_compatible(dev->of_node,
         "brcm,cygnus-ccm-gpio"))
   io_ctrl_type = IOCTRL_TYPE_CDRU;
  else
   io_ctrl_type = IOCTRL_TYPE_AON;
 }

 chip->io_ctrl_type = io_ctrl_type;

 if (of_property_read_u32(dev->of_node, "ngpios", &ngpios)) {
  dev_err(&pdev->dev, "missing ngpios DT property\n");
  return -ENODEV;
 }

 raw_spin_lock_init(&chip->lock);

 gc = &chip->gc;
 gc->base = -1;
 gc->ngpio = ngpios;
 chip->num_banks = (ngpios + NGPIOS_PER_BANK - 1) / NGPIOS_PER_BANK;
 gc->label = dev_name(dev);
 gc->parent = dev;
 gc->of_node = dev->of_node;
 gc->request = iproc_gpio_request;
 gc->free = iproc_gpio_free;
 gc->direction_input = iproc_gpio_direction_input;
 gc->direction_output = iproc_gpio_direction_output;
 gc->get_direction = iproc_gpio_get_direction;
 gc->set = iproc_gpio_set;
 gc->get = iproc_gpio_get;

 chip->pinmux_is_supported = of_property_read_bool(dev->of_node,
       "gpio-ranges");


 irq = platform_get_irq(pdev, 0);
 if (irq > 0) {
  struct irq_chip *irqc;
  struct gpio_irq_chip *girq;

  irqc = &chip->irqchip;
  irqc->name = "bcm-iproc-gpio";
  irqc->irq_ack = iproc_gpio_irq_ack;
  irqc->irq_mask = iproc_gpio_irq_mask;
  irqc->irq_unmask = iproc_gpio_irq_unmask;
  irqc->irq_set_type = iproc_gpio_irq_set_type;
  irqc->irq_enable = iproc_gpio_irq_unmask;
  irqc->irq_disable = iproc_gpio_irq_mask;

  girq = &gc->irq;
  girq->chip = irqc;
  girq->parent_handler = iproc_gpio_irq_handler;
  girq->num_parents = 1;
  girq->parents = devm_kcalloc(dev, 1,
          sizeof(*girq->parents),
          GFP_KERNEL);
  if (!girq->parents)
   return -ENOMEM;
  girq->parents[0] = irq;
  girq->default_type = IRQ_TYPE_NONE;
  girq->handler = handle_simple_irq;
 }

 ret = gpiochip_add_data(gc, chip);
 if (ret < 0) {
  dev_err(dev, "unable to add GPIO chip\n");
  return ret;
 }

 if (!no_pinconf) {
  ret = iproc_gpio_register_pinconf(chip);
  if (ret) {
   dev_err(dev, "unable to register pinconf\n");
   goto err_rm_gpiochip;
  }

  if (pinconf_disable_mask) {
   ret = iproc_pinconf_disable_map_create(chip,
        pinconf_disable_mask);
   if (ret) {
    dev_err(dev,
     "unable to create pinconf disable map\n");
    goto err_rm_gpiochip;
   }
  }
 }

 return 0;

err_rm_gpiochip:
 gpiochip_remove(gc);

 return ret;
}
