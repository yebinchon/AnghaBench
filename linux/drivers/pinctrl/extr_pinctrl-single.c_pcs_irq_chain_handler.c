
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_soc_data {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct pcs_soc_data* irq_desc_get_handler_data (struct irq_desc*) ;
 int pcs_irq_handle (struct pcs_soc_data*) ;

__attribute__((used)) static void pcs_irq_chain_handler(struct irq_desc *desc)
{
 struct pcs_soc_data *pcs_soc = irq_desc_get_handler_data(desc);
 struct irq_chip *chip;

 chip = irq_desc_get_chip(desc);
 chained_irq_enter(chip, desc);
 pcs_irq_handle(pcs_soc);

 chained_irq_exit(chip, desc);
}
