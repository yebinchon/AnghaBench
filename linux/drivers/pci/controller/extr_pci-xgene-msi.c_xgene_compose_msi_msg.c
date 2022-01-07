
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct xgene_msi {scalar_t__ msi_addr; } ;
struct msi_msg {int data; int address_lo; int address_hi; } ;
struct irq_data {int hwirq; } ;


 int hwirq_to_group (int ) ;
 int hwirq_to_msi_data (int ) ;
 int hwirq_to_reg_set (int ) ;
 struct xgene_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void xgene_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct xgene_msi *msi = irq_data_get_irq_chip_data(data);
 u32 reg_set = hwirq_to_reg_set(data->hwirq);
 u32 group = hwirq_to_group(data->hwirq);
 u64 target_addr = msi->msi_addr + (((8 * group) + reg_set) << 16);

 msg->address_hi = upper_32_bits(target_addr);
 msg->address_lo = lower_32_bits(target_addr);
 msg->data = hwirq_to_msi_data(data->hwirq);
}
