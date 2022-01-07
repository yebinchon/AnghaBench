
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsm_entry {int irq_falling; int irq_rising; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 int clear_bit (int ,int ) ;
 struct smsm_entry* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int smsm_set_irq_type(struct irq_data *irqd, unsigned int type)
{
 struct smsm_entry *entry = irq_data_get_irq_chip_data(irqd);
 irq_hw_number_t irq = irqd_to_hwirq(irqd);

 if (!(type & IRQ_TYPE_EDGE_BOTH))
  return -EINVAL;

 if (type & IRQ_TYPE_EDGE_RISING)
  set_bit(irq, entry->irq_rising);
 else
  clear_bit(irq, entry->irq_rising);

 if (type & IRQ_TYPE_EDGE_FALLING)
  set_bit(irq, entry->irq_falling);
 else
  clear_bit(irq, entry->irq_falling);

 return 0;
}
