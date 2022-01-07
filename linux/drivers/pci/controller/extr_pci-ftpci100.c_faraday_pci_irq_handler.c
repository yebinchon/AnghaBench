
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct faraday_pci {int irqdomain; } ;


 unsigned int BIT (unsigned int) ;
 int FARADAY_PCI_CTRL2 ;
 unsigned int PCI_CTRL2_INTSTS_SHIFT ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int faraday_raw_pci_read_config (struct faraday_pci*,int ,int ,int ,int,unsigned int*) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct faraday_pci* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,unsigned int) ;

__attribute__((used)) static void faraday_pci_irq_handler(struct irq_desc *desc)
{
 struct faraday_pci *p = irq_desc_get_handler_data(desc);
 struct irq_chip *irqchip = irq_desc_get_chip(desc);
 unsigned int irq_stat, reg, i;

 faraday_raw_pci_read_config(p, 0, 0, FARADAY_PCI_CTRL2, 4, &reg);
 irq_stat = reg >> PCI_CTRL2_INTSTS_SHIFT;

 chained_irq_enter(irqchip, desc);

 for (i = 0; i < 4; i++) {
  if ((irq_stat & BIT(i)) == 0)
   continue;
  generic_handle_irq(irq_find_mapping(p->irqdomain, i));
 }

 chained_irq_exit(irqchip, desc);
}
