
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int msi_set_mask_bit (struct irq_data*,int ) ;

void pci_msi_unmask_irq(struct irq_data *data)
{
 msi_set_mask_bit(data, 0);
}
