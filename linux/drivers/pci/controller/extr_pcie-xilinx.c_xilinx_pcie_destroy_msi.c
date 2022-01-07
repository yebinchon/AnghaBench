
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {int dev; } ;
struct msi_desc {int dummy; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int clear_bit (int ,int ) ;
 int dev_err (int ,char*,unsigned int) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 struct msi_desc* irq_get_msi_desc (unsigned int) ;
 int irqd_to_hwirq (struct irq_data*) ;
 struct xilinx_pcie_port* msi_desc_to_pci_sysdata (struct msi_desc*) ;
 int msi_irq_in_use ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void xilinx_pcie_destroy_msi(unsigned int irq)
{
 struct msi_desc *msi;
 struct xilinx_pcie_port *port;
 struct irq_data *d = irq_get_irq_data(irq);
 irq_hw_number_t hwirq = irqd_to_hwirq(d);

 if (!test_bit(hwirq, msi_irq_in_use)) {
  msi = irq_get_msi_desc(irq);
  port = msi_desc_to_pci_sysdata(msi);
  dev_err(port->dev, "Trying to free unused MSI#%d\n", irq);
 } else {
  clear_bit(hwirq, msi_irq_in_use);
 }
}
