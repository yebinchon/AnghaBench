
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {unsigned int hwirq; } ;
struct iproc_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int IPROC_GPIO_INT_CLR_OFFSET ;
 unsigned int IPROC_GPIO_REG (unsigned int,int ) ;
 unsigned int IPROC_GPIO_SHIFT (unsigned int) ;
 struct iproc_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void iproc_gpio_irq_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct iproc_gpio *chip = gpiochip_get_data(gc);
 unsigned gpio = d->hwirq;
 unsigned int offset = IPROC_GPIO_REG(gpio,
   IPROC_GPIO_INT_CLR_OFFSET);
 unsigned int shift = IPROC_GPIO_SHIFT(gpio);
 u32 val = BIT(shift);

 writel(val, chip->base + offset);
}
