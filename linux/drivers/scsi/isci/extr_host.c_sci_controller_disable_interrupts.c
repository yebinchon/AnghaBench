
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {TYPE_1__* smu_registers; int flags; } ;
struct TYPE_2__ {int interrupt_mask; } ;


 int IHOST_IRQ_ENABLED ;
 int clear_bit (int ,int *) ;
 int readl (int *) ;
 int writel (int,int *) ;

void sci_controller_disable_interrupts(struct isci_host *ihost)
{
 clear_bit(IHOST_IRQ_ENABLED, &ihost->flags);
 writel(0xffffffff, &ihost->smu_registers->interrupt_mask);
 readl(&ihost->smu_registers->interrupt_mask);
}
