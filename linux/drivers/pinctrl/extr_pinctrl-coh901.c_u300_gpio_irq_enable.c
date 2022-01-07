
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct u300_gpio_port {int name; } ;
struct u300_gpio {int dev; struct u300_gpio_port* ports; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int U300_PIN_BIT (int) ;
 int U300_PIN_REG (int,int ) ;
 int dev_dbg (int ,char*,int,int ,int) ;
 struct u300_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ien ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void u300_gpio_irq_enable(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(d);
 struct u300_gpio *gpio = gpiochip_get_data(chip);
 struct u300_gpio_port *port = &gpio->ports[d->hwirq >> 3];
 int offset = d->hwirq;
 u32 val;
 unsigned long flags;

 dev_dbg(gpio->dev, "enable IRQ for hwirq %lu on port %s, offset %d\n",
   d->hwirq, port->name, offset);
 local_irq_save(flags);
 val = readl(U300_PIN_REG(offset, ien));
 writel(val | U300_PIN_BIT(offset), U300_PIN_REG(offset, ien));
 local_irq_restore(flags);
}
