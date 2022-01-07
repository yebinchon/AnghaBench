
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pcie_port {scalar_t__ msi_data; } ;
struct msi_msg {int address_lo; int address_hi; scalar_t__ data; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct dw_pcie {int dev; } ;


 int dev_dbg (int ,char*,int,int ,int ) ;
 struct pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (scalar_t__) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void dw_pci_setup_msi_msg(struct irq_data *d, struct msi_msg *msg)
{
 struct pcie_port *pp = irq_data_get_irq_chip_data(d);
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 u64 msi_target;

 msi_target = (u64)pp->msi_data;

 msg->address_lo = lower_32_bits(msi_target);
 msg->address_hi = upper_32_bits(msi_target);

 msg->data = d->hwirq;

 dev_dbg(pci->dev, "msi#%d address_hi %#x address_lo %#x\n",
  (int)d->hwirq, msg->address_hi, msg->address_lo);
}
