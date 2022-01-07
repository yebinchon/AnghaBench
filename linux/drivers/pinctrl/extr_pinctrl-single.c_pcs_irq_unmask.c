
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_soc_data {int dummy; } ;
struct irq_data {int irq; } ;


 struct pcs_soc_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int pcs_irq_set (struct pcs_soc_data*,int ,int) ;

__attribute__((used)) static void pcs_irq_unmask(struct irq_data *d)
{
 struct pcs_soc_data *pcs_soc = irq_data_get_irq_chip_data(d);

 pcs_irq_set(pcs_soc, d->irq, 1);
}
