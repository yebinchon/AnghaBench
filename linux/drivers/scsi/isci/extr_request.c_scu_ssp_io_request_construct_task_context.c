
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ssp_cmd_iu {int dummy; } ;
struct TYPE_5__ {int frame_type; } ;
struct TYPE_6__ {TYPE_2__ ssp; } ;
struct scu_task_context {int ssp_command_iu_length; scalar_t__ transfer_length_bytes; int task_type; TYPE_3__ type; } ;
struct scsi_cmnd {int dummy; } ;
struct sas_task {struct scsi_cmnd* uldd_task; } ;
struct TYPE_4__ {struct sas_task* io_task_ptr; } ;
struct isci_request {TYPE_1__ ttype_ptr; struct scu_task_context* tc; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;





 scalar_t__ SCSI_PROT_DIF_TYPE0 ;
 scalar_t__ SCSI_PROT_READ_STRIP ;
 scalar_t__ SCSI_PROT_WRITE_INSERT ;
 int SCU_TASK_TYPE_IOREAD ;
 int SCU_TASK_TYPE_IOWRITE ;
 int SSP_COMMAND ;
 int sci_request_build_sgl (struct isci_request*) ;
 scalar_t__ scsi_get_prot_op (struct scsi_cmnd*) ;
 scalar_t__ scsi_get_prot_type (struct scsi_cmnd*) ;
 int scu_ssp_ireq_dif_insert (struct isci_request*,scalar_t__,scalar_t__) ;
 int scu_ssp_ireq_dif_strip (struct isci_request*,scalar_t__,scalar_t__) ;
 int scu_ssp_request_construct_task_context (struct isci_request*,struct scu_task_context*) ;

__attribute__((used)) static void scu_ssp_io_request_construct_task_context(struct isci_request *ireq,
            enum dma_data_direction dir,
            u32 len)
{
 struct scu_task_context *task_context = ireq->tc;
 struct sas_task *sas_task = ireq->ttype_ptr.io_task_ptr;
 struct scsi_cmnd *scmd = sas_task->uldd_task;
 u8 prot_type = scsi_get_prot_type(scmd);
 u8 prot_op = scsi_get_prot_op(scmd);

 scu_ssp_request_construct_task_context(ireq, task_context);

 task_context->ssp_command_iu_length =
  sizeof(struct ssp_cmd_iu) / sizeof(u32);
 task_context->type.ssp.frame_type = SSP_COMMAND;

 switch (dir) {
 case 130:
 case 129:
 default:
  task_context->task_type = SCU_TASK_TYPE_IOREAD;
  break;
 case 128:
  task_context->task_type = SCU_TASK_TYPE_IOWRITE;
  break;
 }

 task_context->transfer_length_bytes = len;

 if (task_context->transfer_length_bytes > 0)
  sci_request_build_sgl(ireq);

 if (prot_type != SCSI_PROT_DIF_TYPE0) {
  if (prot_op == SCSI_PROT_READ_STRIP)
   scu_ssp_ireq_dif_strip(ireq, prot_type, prot_op);
  else if (prot_op == SCSI_PROT_WRITE_INSERT)
   scu_ssp_ireq_dif_insert(ireq, prot_type, prot_op);
 }
}
