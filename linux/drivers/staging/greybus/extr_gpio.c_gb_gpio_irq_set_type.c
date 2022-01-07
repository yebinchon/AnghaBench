
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct irq_data {size_t hwirq; } ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_line {int irq_type_pending; int irq_type; } ;
struct gb_gpio_controller {TYPE_1__* gbphy_dev; struct gb_gpio_line* lines; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int GB_GPIO_IRQ_TYPE_EDGE_BOTH ;
 int GB_GPIO_IRQ_TYPE_EDGE_FALLING ;
 int GB_GPIO_IRQ_TYPE_EDGE_RISING ;
 int GB_GPIO_IRQ_TYPE_LEVEL_HIGH ;
 int GB_GPIO_IRQ_TYPE_LEVEL_LOW ;
 int GB_GPIO_IRQ_TYPE_NONE ;






 int dev_err (struct device*,char*,unsigned int) ;
 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;
 struct gpio_chip* irq_data_to_gpio_chip (struct irq_data*) ;

__attribute__((used)) static int gb_gpio_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *chip = irq_data_to_gpio_chip(d);
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);
 struct gb_gpio_line *line = &ggc->lines[d->hwirq];
 struct device *dev = &ggc->gbphy_dev->dev;
 u8 irq_type;

 switch (type) {
 case 128:
  irq_type = GB_GPIO_IRQ_TYPE_NONE;
  break;
 case 131:
  irq_type = GB_GPIO_IRQ_TYPE_EDGE_RISING;
  break;
 case 132:
  irq_type = GB_GPIO_IRQ_TYPE_EDGE_FALLING;
  break;
 case 133:
  irq_type = GB_GPIO_IRQ_TYPE_EDGE_BOTH;
  break;
 case 129:
  irq_type = GB_GPIO_IRQ_TYPE_LEVEL_LOW;
  break;
 case 130:
  irq_type = GB_GPIO_IRQ_TYPE_LEVEL_HIGH;
  break;
 default:
  dev_err(dev, "unsupported irq type: %u\n", type);
  return -EINVAL;
 }

 line->irq_type = irq_type;
 line->irq_type_pending = 1;

 return 0;
}
