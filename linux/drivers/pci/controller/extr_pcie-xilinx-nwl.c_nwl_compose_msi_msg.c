
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwl_pcie {int phys_pcie_reg_base; } ;
struct msi_msg {int data; int address_hi; int address_lo; } ;
struct irq_data {int hwirq; } ;
typedef int phys_addr_t ;


 struct nwl_pcie* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void nwl_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct nwl_pcie *pcie = irq_data_get_irq_chip_data(data);
 phys_addr_t msi_addr = pcie->phys_pcie_reg_base;

 msg->address_lo = lower_32_bits(msi_addr);
 msg->address_hi = upper_32_bits(msi_addr);
 msg->data = data->hwirq;
}
