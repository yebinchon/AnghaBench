
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssp_task_iu {int dummy; } ;
struct TYPE_4__ {int frame_type; } ;
struct TYPE_3__ {TYPE_2__ ssp; } ;
struct scu_task_context {int control_frame; int ssp_command_iu_length; TYPE_1__ type; scalar_t__ transfer_length_bytes; int task_type; int priority; } ;
struct isci_request {struct scu_task_context* tc; } ;


 int SCU_TASK_PRIORITY_HIGH ;
 int SCU_TASK_TYPE_RAW_FRAME ;
 int SSP_TASK ;
 int scu_ssp_request_construct_task_context (struct isci_request*,struct scu_task_context*) ;

__attribute__((used)) static void scu_ssp_task_request_construct_task_context(struct isci_request *ireq)
{
 struct scu_task_context *task_context = ireq->tc;

 scu_ssp_request_construct_task_context(ireq, task_context);

 task_context->control_frame = 1;
 task_context->priority = SCU_TASK_PRIORITY_HIGH;
 task_context->task_type = SCU_TASK_TYPE_RAW_FRAME;
 task_context->transfer_length_bytes = 0;
 task_context->type.ssp.frame_type = SSP_TASK;
 task_context->ssp_command_iu_length =
  sizeof(struct ssp_task_iu) / sizeof(u32);
}
