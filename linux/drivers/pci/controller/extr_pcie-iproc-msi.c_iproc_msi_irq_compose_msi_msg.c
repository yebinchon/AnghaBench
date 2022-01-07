
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int data; int address_hi; int address_lo; } ;
struct irq_data {int hwirq; } ;
struct iproc_msi {scalar_t__ msi_addr; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ iproc_msi_addr_offset (struct iproc_msi*,int) ;
 struct iproc_msi* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void iproc_msi_irq_compose_msi_msg(struct irq_data *data,
       struct msi_msg *msg)
{
 struct iproc_msi *msi = irq_data_get_irq_chip_data(data);
 dma_addr_t addr;

 addr = msi->msi_addr + iproc_msi_addr_offset(msi, data->hwirq);
 msg->address_lo = lower_32_bits(addr);
 msg->address_hi = upper_32_bits(addr);
 msg->data = data->hwirq << 5;
}
