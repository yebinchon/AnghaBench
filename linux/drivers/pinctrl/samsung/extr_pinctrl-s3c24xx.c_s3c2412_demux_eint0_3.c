
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_eint_data {int * domains; } ;
struct irq_desc {int dummy; } ;
struct irq_data {size_t hwirq; } ;
struct irq_chip {int dummy; } ;


 int BUG_ON (int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct s3c24xx_eint_data* irq_desc_get_handler_data (struct irq_desc*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,size_t) ;

__attribute__((used)) static void s3c2412_demux_eint0_3(struct irq_desc *desc)
{
 struct s3c24xx_eint_data *eint_data = irq_desc_get_handler_data(desc);
 struct irq_data *data = irq_desc_get_irq_data(desc);
 struct irq_chip *chip = irq_data_get_irq_chip(data);
 unsigned int virq;

 chained_irq_enter(chip, desc);


 virq = irq_linear_revmap(eint_data->domains[data->hwirq], data->hwirq);

 BUG_ON(!virq);

 generic_handle_irq(virq);

 chained_irq_exit(chip, desc);
}
