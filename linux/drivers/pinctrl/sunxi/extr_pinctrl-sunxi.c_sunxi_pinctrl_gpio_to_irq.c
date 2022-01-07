
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_pinctrl {int domain; TYPE_1__* desc; } ;
struct sunxi_desc_function {unsigned int irqbank; unsigned int irqnum; } ;
struct gpio_chip {unsigned int ngpio; scalar_t__ base; int label; int parent; } ;
struct TYPE_2__ {unsigned int pin_base; } ;


 int EINVAL ;
 int ENXIO ;
 unsigned int IRQ_PER_BANK ;
 int dev_dbg (int ,char*,int ,scalar_t__,unsigned int) ;
 struct sunxi_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int irq_find_mapping (int ,unsigned int) ;
 struct sunxi_desc_function* sunxi_pinctrl_desc_find_function_by_pin (struct sunxi_pinctrl*,unsigned int,char*) ;

__attribute__((used)) static int sunxi_pinctrl_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct sunxi_pinctrl *pctl = gpiochip_get_data(chip);
 struct sunxi_desc_function *desc;
 unsigned pinnum = pctl->desc->pin_base + offset;
 unsigned irqnum;

 if (offset >= chip->ngpio)
  return -ENXIO;

 desc = sunxi_pinctrl_desc_find_function_by_pin(pctl, pinnum, "irq");
 if (!desc)
  return -EINVAL;

 irqnum = desc->irqbank * IRQ_PER_BANK + desc->irqnum;

 dev_dbg(chip->parent, "%s: request IRQ for GPIO %d, return %d\n",
  chip->label, offset + chip->base, irqnum);

 return irq_find_mapping(pctl->domain, irqnum);
}
