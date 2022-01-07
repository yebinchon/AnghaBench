
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {unsigned int hwirq; int irq; TYPE_1__* chip; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int parent_device; } ;


 int dev_dbg (int ,char*,unsigned int,int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int npcmgpio_direction_input (struct gpio_chip*,unsigned int) ;
 int npcmgpio_irq_ack (struct irq_data*) ;
 int npcmgpio_irq_unmask (struct irq_data*) ;

__attribute__((used)) static unsigned int npcmgpio_irq_startup(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 unsigned int gpio = d->hwirq;


 dev_dbg(d->chip->parent_device, "startup: %u.%u\n", gpio, d->irq);
 npcmgpio_direction_input(gc, gpio);
 npcmgpio_irq_ack(d);
 npcmgpio_irq_unmask(d);

 return 0;
}
