
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_pcie_port {scalar_t__ base; } ;
struct irq_data {int hwirq; } ;


 scalar_t__ PCIE_IMSI_STATUS ;
 struct mtk_pcie_port* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_msi_ack_irq(struct irq_data *data)
{
 struct mtk_pcie_port *port = irq_data_get_irq_chip_data(data);
 u32 hwirq = data->hwirq;

 writel(1 << hwirq, port->base + PCIE_IMSI_STATUS);
}
