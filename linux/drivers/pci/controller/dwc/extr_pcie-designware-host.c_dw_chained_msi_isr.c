
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int dw_handle_msi_irq (struct pcie_port*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct pcie_port* irq_desc_get_handler_data (struct irq_desc*) ;

__attribute__((used)) static void dw_chained_msi_isr(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct pcie_port *pp;

 chained_irq_enter(chip, desc);

 pp = irq_desc_get_handler_data(desc);
 dw_handle_msi_irq(pp);

 chained_irq_exit(chip, desc);
}
