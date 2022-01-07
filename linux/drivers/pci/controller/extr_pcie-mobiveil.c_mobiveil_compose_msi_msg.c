
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_msg {int data; int address_lo; int address_hi; } ;
struct mobiveil_pcie {TYPE_1__* pdev; scalar_t__ pcie_reg_base; } ;
struct irq_data {int hwirq; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int,int ,int ) ;
 struct mobiveil_pcie* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void mobiveil_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(data);
 phys_addr_t addr = pcie->pcie_reg_base + (data->hwirq * sizeof(int));

 msg->address_lo = lower_32_bits(addr);
 msg->address_hi = upper_32_bits(addr);
 msg->data = data->hwirq;

 dev_dbg(&pcie->pdev->dev, "msi#%d address_hi %#x address_lo %#x\n",
  (int)data->hwirq, msg->address_hi, msg->address_lo);
}
