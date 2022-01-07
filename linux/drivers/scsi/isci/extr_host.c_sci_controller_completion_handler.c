
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {TYPE_1__* smu_registers; } ;
struct TYPE_2__ {int interrupt_mask; int interrupt_status; } ;


 int SMU_ISR_COMPLETION ;
 scalar_t__ sci_controller_completion_queue_has_entries (struct isci_host*) ;
 int sci_controller_process_completions (struct isci_host*) ;
 int writel (int,int *) ;

__attribute__((used)) static void sci_controller_completion_handler(struct isci_host *ihost)
{

 if (sci_controller_completion_queue_has_entries(ihost))
  sci_controller_process_completions(ihost);


 writel(SMU_ISR_COMPLETION, &ihost->smu_registers->interrupt_status);

 writel(0xFF000000, &ihost->smu_registers->interrupt_mask);
 writel(0, &ihost->smu_registers->interrupt_mask);
}
