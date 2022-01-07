
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tango_pcie {int msi_doorbell; } ;
struct msi_msg {int data; int address_hi; int address_lo; } ;
struct irq_data {int hwirq; struct tango_pcie* chip_data; } ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void tango_compose_msi_msg(struct irq_data *d, struct msi_msg *msg)
{
 struct tango_pcie *pcie = d->chip_data;
 msg->address_lo = lower_32_bits(pcie->msi_doorbell);
 msg->address_hi = upper_32_bits(pcie->msi_doorbell);
 msg->data = d->hwirq;
}
