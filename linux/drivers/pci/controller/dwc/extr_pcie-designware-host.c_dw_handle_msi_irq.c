
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {int num_vectors; int irq_domain; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MAX_MSI_IRQS_PER_CTRL ;
 int MSI_REG_CTRL_BLOCK_SIZE ;
 scalar_t__ PCIE_MSI_INTR0_STATUS ;
 int dw_pcie_rd_own_conf (struct pcie_port*,scalar_t__,int,int*) ;
 int find_next_bit (unsigned long*,int,int) ;
 int generic_handle_irq (int) ;
 int irq_find_mapping (int ,int) ;

irqreturn_t dw_handle_msi_irq(struct pcie_port *pp)
{
 int i, pos, irq;
 u32 val, num_ctrls;
 irqreturn_t ret = IRQ_NONE;

 num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;

 for (i = 0; i < num_ctrls; i++) {
  dw_pcie_rd_own_conf(pp, PCIE_MSI_INTR0_STATUS +
     (i * MSI_REG_CTRL_BLOCK_SIZE),
        4, &val);
  if (!val)
   continue;

  ret = IRQ_HANDLED;
  pos = 0;
  while ((pos = find_next_bit((unsigned long *) &val,
         MAX_MSI_IRQS_PER_CTRL,
         pos)) != MAX_MSI_IRQS_PER_CTRL) {
   irq = irq_find_mapping(pp->irq_domain,
            (i * MAX_MSI_IRQS_PER_CTRL) +
            pos);
   generic_handle_irq(irq);
   pos++;
  }
 }

 return ret;
}
