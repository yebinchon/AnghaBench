
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {TYPE_1__* smu_registers; int flags; } ;
struct TYPE_2__ {int interrupt_mask; } ;


 int IHOST_IRQ_ENABLED ;
 int set_bit (int ,int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void sci_controller_enable_interrupts(struct isci_host *ihost)
{
 set_bit(IHOST_IRQ_ENABLED, &ihost->flags);
 writel(0, &ihost->smu_registers->interrupt_mask);
}
