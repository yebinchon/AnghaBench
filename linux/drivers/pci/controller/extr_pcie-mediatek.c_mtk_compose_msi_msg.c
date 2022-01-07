
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pcie_port {TYPE_1__* pcie; scalar_t__ base; } ;
struct msi_msg {int address_lo; int address_hi; scalar_t__ data; } ;
struct irq_data {scalar_t__ hwirq; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PCIE_MSI_VECTOR ;
 int dev_dbg (int ,char*,int,int ,int ) ;
 struct mtk_pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 int lower_32_bits (int ) ;
 int virt_to_phys (scalar_t__) ;

__attribute__((used)) static void mtk_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct mtk_pcie_port *port = irq_data_get_irq_chip_data(data);
 phys_addr_t addr;


 addr = virt_to_phys(port->base + PCIE_MSI_VECTOR);
 msg->address_hi = 0;
 msg->address_lo = lower_32_bits(addr);

 msg->data = data->hwirq;

 dev_dbg(port->pcie->dev, "msi#%d address_hi %#x address_lo %#x\n",
  (int)data->hwirq, msg->address_hi, msg->address_lo);
}
