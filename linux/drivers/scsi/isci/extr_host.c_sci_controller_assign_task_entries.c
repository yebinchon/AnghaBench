
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isci_host {TYPE_1__* smu_registers; scalar_t__ task_context_entries; } ;
struct TYPE_2__ {int * task_context_assignment; } ;


 int ENDING ;
 int RANGE_CHECK_ENABLE ;
 int SMU_TCA_GEN_BIT (int ) ;
 int SMU_TCA_GEN_VAL (int ,scalar_t__) ;
 int STARTING ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void sci_controller_assign_task_entries(struct isci_host *ihost)
{
 u32 task_assignment;






 task_assignment =
  readl(&ihost->smu_registers->task_context_assignment[0]);

 task_assignment |= (SMU_TCA_GEN_VAL(STARTING, 0)) |
  (SMU_TCA_GEN_VAL(ENDING, ihost->task_context_entries - 1)) |
  (SMU_TCA_GEN_BIT(RANGE_CHECK_ENABLE));

 writel(task_assignment,
  &ihost->smu_registers->task_context_assignment[0]);

}
