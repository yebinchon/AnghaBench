
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;

__attribute__((used)) static inline irqreturn_t dw_handle_msi_irq(struct pcie_port *pp)
{
 return IRQ_NONE;
}
