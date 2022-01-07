
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int lbal; int fis_type; } ;
struct TYPE_7__ {TYPE_5__ stp; } ;
struct scu_task_context {int sata_direction; int ssp_command_iu_length; int task_phase; int transfer_length_bytes; scalar_t__ stp_retry_count; TYPE_2__ type; int task_type; } ;
struct TYPE_9__ {int atapi_packet; } ;
struct sas_task {scalar_t__ data_dir; int total_xfer_len; TYPE_4__ ata_task; } ;
struct TYPE_8__ {TYPE_5__ cmd; } ;
struct isci_request {TYPE_3__ stp; struct scu_task_context* tc; TYPE_1__* target_device; } ;
struct ata_device {int cdb_len; } ;
struct TYPE_6__ {int domain_dev; } ;


 scalar_t__ DMA_TO_DEVICE ;
 int FIS_DATA ;
 int SCU_TASK_TYPE_PACKET_DMA_IN ;
 int SCU_TASK_TYPE_PACKET_DMA_OUT ;
 struct sas_task* isci_request_access_task (struct isci_request*) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_5__*,int ,int) ;
 struct ata_device* sas_to_ata_dev (int ) ;
 int sci_request_build_sgl (struct isci_request*) ;

__attribute__((used)) static void scu_atapi_construct_task_context(struct isci_request *ireq)
{
 struct ata_device *dev = sas_to_ata_dev(ireq->target_device->domain_dev);
 struct sas_task *task = isci_request_access_task(ireq);
 struct scu_task_context *task_context = ireq->tc;
 int cdb_len = dev->cdb_len;




 if (task->data_dir == DMA_TO_DEVICE) {
  task_context->task_type = SCU_TASK_TYPE_PACKET_DMA_OUT;
  task_context->sata_direction = 0;
 } else {

  task_context->task_type = SCU_TASK_TYPE_PACKET_DMA_IN;
  task_context->sata_direction = 1;
 }

 memset(&task_context->type.stp, 0, sizeof(task_context->type.stp));
 task_context->type.stp.fis_type = FIS_DATA;

 memset(&ireq->stp.cmd, 0, sizeof(ireq->stp.cmd));
 memcpy(&ireq->stp.cmd.lbal, task->ata_task.atapi_packet, cdb_len);
 task_context->ssp_command_iu_length = cdb_len / sizeof(u32);


 task_context->task_phase = 0x1;


 task_context->stp_retry_count = 0;


 task_context->transfer_length_bytes = task->total_xfer_len;


 sci_request_build_sgl(ireq);
}
