
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehv_bc_data {scalar_t__ tx_irq_enabled; int tx_irq; } ;


 int disable_irq_nosync (int ) ;

__attribute__((used)) static void disable_tx_interrupt(struct ehv_bc_data *bc)
{
 if (bc->tx_irq_enabled) {
  disable_irq_nosync(bc->tx_irq);
  bc->tx_irq_enabled = 0;
 }
}
