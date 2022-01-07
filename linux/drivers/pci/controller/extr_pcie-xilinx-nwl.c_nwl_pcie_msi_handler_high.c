
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_pcie {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int MSGF_MSI_STATUS_HI ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct nwl_pcie* irq_desc_get_handler_data (struct irq_desc*) ;
 int nwl_pcie_handle_msi_irq (struct nwl_pcie*,int ) ;

__attribute__((used)) static void nwl_pcie_msi_handler_high(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct nwl_pcie *pcie = irq_desc_get_handler_data(desc);

 chained_irq_enter(chip, desc);
 nwl_pcie_handle_msi_irq(pcie, MSGF_MSI_STATUS_HI);
 chained_irq_exit(chip, desc);
}
