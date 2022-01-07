
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nsp_gpio {int dummy; } ;
struct irq_data {unsigned int hwirq; int irq; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int NSP_GPIO_EVENT_INT_MASK ;
 int NSP_GPIO_INT_MASK ;
 int REG ;
 struct nsp_gpio* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_get_trigger_type (int ) ;
 int nsp_set_bit (struct nsp_gpio*,int ,int ,unsigned int,int) ;

__attribute__((used)) static void nsp_gpio_irq_set_mask(struct irq_data *d, bool unmask)
{
 struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
 unsigned gpio = d->hwirq;
 u32 trigger_type;

 trigger_type = irq_get_trigger_type(d->irq);
 if (trigger_type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
  nsp_set_bit(chip, REG, NSP_GPIO_EVENT_INT_MASK, gpio, unmask);
 else
  nsp_set_bit(chip, REG, NSP_GPIO_INT_MASK, gpio, unmask);
}
