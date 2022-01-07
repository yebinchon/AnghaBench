
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_interrupt_data {int num_interrupts; TYPE_1__* msix_entries; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int vector; int entry; } ;


 int IRQ_HANDLED ;
 int gasket_handle_interrupt (struct gasket_interrupt_data*,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static irqreturn_t gasket_msix_interrupt_handler(int irq, void *dev_id)
{
 struct gasket_interrupt_data *interrupt_data = dev_id;
 int interrupt = -1;
 int i;


 for (i = 0; i < interrupt_data->num_interrupts; i++) {
  if (interrupt_data->msix_entries[i].vector == irq) {
   interrupt = interrupt_data->msix_entries[i].entry;
   break;
  }
 }
 if (interrupt == -1) {
  pr_err("Received unknown irq %d\n", irq);
  return IRQ_HANDLED;
 }
 gasket_handle_interrupt(interrupt_data, interrupt);
 return IRQ_HANDLED;
}
