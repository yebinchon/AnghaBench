
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int data; int address_hi; int address_lo; } ;
struct irq_data {int irq; } ;
struct advk_pcie {int msi_msg; } ;
typedef int phys_addr_t ;


 struct advk_pcie* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int virt_to_phys (int *) ;

__attribute__((used)) static void advk_msi_irq_compose_msi_msg(struct irq_data *data,
      struct msi_msg *msg)
{
 struct advk_pcie *pcie = irq_data_get_irq_chip_data(data);
 phys_addr_t msi_msg = virt_to_phys(&pcie->msi_msg);

 msg->address_lo = lower_32_bits(msi_msg);
 msg->address_hi = upper_32_bits(msi_msg);
 msg->data = data->irq;
}
