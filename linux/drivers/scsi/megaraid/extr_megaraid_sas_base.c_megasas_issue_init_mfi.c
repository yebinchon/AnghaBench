
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct megasas_instance {int max_fw_cmds; int reply_queue_h; int producer_h; int consumer_h; TYPE_2__* pdev; TYPE_1__* instancet; } ;
struct megasas_init_queue_info {void* data_xfer_len; void* queue_info_new_phys_addr_hi; void* queue_info_new_phys_addr_lo; int cmd_status; int cmd; void* consumer_index_phys_addr_lo; void* producer_index_phys_addr_lo; void* reply_queue_start_phys_addr_lo; void* reply_queue_entries; int context; } ;
struct megasas_init_frame {void* data_xfer_len; void* queue_info_new_phys_addr_hi; void* queue_info_new_phys_addr_lo; int cmd_status; int cmd; void* consumer_index_phys_addr_lo; void* producer_index_phys_addr_lo; void* reply_queue_start_phys_addr_lo; void* reply_queue_entries; int context; } ;
struct megasas_cmd {scalar_t__ frame_phys_addr; scalar_t__ frame; } ;
typedef scalar_t__ dma_addr_t ;
typedef int __le32 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* disable_intr ) (struct megasas_instance*) ;} ;


 int EINVAL ;
 int MEGAMFI_FRAME_SIZE ;
 int MFI_CMD_INIT ;
 int MFI_STAT_INVALID_STATUS ;
 void* cpu_to_le32 (int) ;
 int dev_err (int *,char*) ;
 int lower_32_bits (scalar_t__) ;
 struct megasas_cmd* megasas_get_cmd (struct megasas_instance*) ;
 scalar_t__ megasas_issue_polled (struct megasas_instance*,struct megasas_cmd*) ;
 int megasas_return_cmd (struct megasas_instance*,struct megasas_cmd*) ;
 int memset (struct megasas_init_queue_info*,int ,int) ;
 int stub1 (struct megasas_instance*) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int
megasas_issue_init_mfi(struct megasas_instance *instance)
{
 __le32 context;
 struct megasas_cmd *cmd;
 struct megasas_init_frame *init_frame;
 struct megasas_init_queue_info *initq_info;
 dma_addr_t init_frame_h;
 dma_addr_t initq_info_h;
 cmd = megasas_get_cmd(instance);

 init_frame = (struct megasas_init_frame *)cmd->frame;
 initq_info = (struct megasas_init_queue_info *)
  ((unsigned long)init_frame + 64);

 init_frame_h = cmd->frame_phys_addr;
 initq_info_h = init_frame_h + 64;

 context = init_frame->context;
 memset(init_frame, 0, MEGAMFI_FRAME_SIZE);
 memset(initq_info, 0, sizeof(struct megasas_init_queue_info));
 init_frame->context = context;

 initq_info->reply_queue_entries = cpu_to_le32(instance->max_fw_cmds + 1);
 initq_info->reply_queue_start_phys_addr_lo = cpu_to_le32(instance->reply_queue_h);

 initq_info->producer_index_phys_addr_lo = cpu_to_le32(instance->producer_h);
 initq_info->consumer_index_phys_addr_lo = cpu_to_le32(instance->consumer_h);

 init_frame->cmd = MFI_CMD_INIT;
 init_frame->cmd_status = MFI_STAT_INVALID_STATUS;
 init_frame->queue_info_new_phys_addr_lo =
  cpu_to_le32(lower_32_bits(initq_info_h));
 init_frame->queue_info_new_phys_addr_hi =
  cpu_to_le32(upper_32_bits(initq_info_h));

 init_frame->data_xfer_len = cpu_to_le32(sizeof(struct megasas_init_queue_info));




 instance->instancet->disable_intr(instance);





 if (megasas_issue_polled(instance, cmd)) {
  dev_err(&instance->pdev->dev, "Failed to init firmware\n");
  megasas_return_cmd(instance, cmd);
  goto fail_fw_init;
 }

 megasas_return_cmd(instance, cmd);

 return 0;

fail_fw_init:
 return -EINVAL;
}
