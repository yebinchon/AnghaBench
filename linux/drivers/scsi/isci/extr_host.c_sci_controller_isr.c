
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {int scic_lock; TYPE_1__* smu_registers; int flags; } ;
struct TYPE_2__ {int interrupt_mask; int interrupt_status; } ;


 int IHOST_IRQ_ENABLED ;
 int SMU_ISR_COMPLETION ;
 scalar_t__ sci_controller_completion_queue_has_entries (struct isci_host*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int writel (int,int *) ;

__attribute__((used)) static bool sci_controller_isr(struct isci_host *ihost)
{
 if (sci_controller_completion_queue_has_entries(ihost))
  return 1;





 writel(SMU_ISR_COMPLETION, &ihost->smu_registers->interrupt_status);







 spin_lock(&ihost->scic_lock);
 if (test_bit(IHOST_IRQ_ENABLED, &ihost->flags)) {
  writel(0xFF000000, &ihost->smu_registers->interrupt_mask);
  writel(0, &ihost->smu_registers->interrupt_mask);
 }
 spin_unlock(&ihost->scic_lock);

 return 0;
}
