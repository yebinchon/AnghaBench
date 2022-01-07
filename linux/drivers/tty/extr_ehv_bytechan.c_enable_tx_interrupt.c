
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehv_bc_data {int tx_irq_enabled; int tx_irq; } ;


 int enable_irq (int ) ;

__attribute__((used)) static void enable_tx_interrupt(struct ehv_bc_data *bc)
{
 if (!bc->tx_irq_enabled) {
  enable_irq(bc->tx_irq);
  bc->tx_irq_enabled = 1;
 }
}
