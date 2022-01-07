
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp2p_entry {int irq_enabled; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 struct smp2p_entry* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void smp2p_unmask_irq(struct irq_data *irqd)
{
 struct smp2p_entry *entry = irq_data_get_irq_chip_data(irqd);
 irq_hw_number_t irq = irqd_to_hwirq(irqd);

 set_bit(irq, entry->irq_enabled);
}
