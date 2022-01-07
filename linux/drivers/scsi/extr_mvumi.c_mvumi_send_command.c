
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvumi_sgl {int dummy; } ;
struct mvumi_msg_frame {size_t tag; int sg_counts; scalar_t__ request_id; } ;
struct mvumi_hba {scalar_t__ fw_state; int hba_capability; struct mvumi_cmd** tag_cmd; int io_seq; int tag_pool; TYPE_1__* pdev; } ;
struct mvumi_dyn_list_entry {unsigned int if_length; void* src_high_addr; void* src_low_addr; } ;
struct mvumi_cmd {int frame_phys; struct mvumi_msg_frame* frame; scalar_t__ request_id; } ;
typedef enum mvumi_qc_result { ____Placeholder_mvumi_qc_result } mvumi_qc_result ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ FW_STATE_STARTED ;
 int HS_CAPABILITY_SUPPORT_DYN_SRC ;
 int MV_QUEUE_COMMAND_RESULT_NO_RESOURCE ;
 int MV_QUEUE_COMMAND_RESULT_SENT ;
 void* cpu_to_le32 (int ) ;
 int dev_dbg (int *,char*) ;
 int lower_32_bits (int ) ;
 int memcpy (void*,struct mvumi_msg_frame*,unsigned int) ;
 int mvumi_get_ib_list_entry (struct mvumi_hba*,void**) ;
 size_t tag_get_one (struct mvumi_hba*,int *) ;
 scalar_t__ tag_is_empty (int *) ;
 scalar_t__ unlikely (int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static enum mvumi_qc_result mvumi_send_command(struct mvumi_hba *mhba,
      struct mvumi_cmd *cmd)
{
 void *ib_entry;
 struct mvumi_msg_frame *ib_frame;
 unsigned int frame_len;

 ib_frame = cmd->frame;
 if (unlikely(mhba->fw_state != FW_STATE_STARTED)) {
  dev_dbg(&mhba->pdev->dev, "firmware not ready.\n");
  return MV_QUEUE_COMMAND_RESULT_NO_RESOURCE;
 }
 if (tag_is_empty(&mhba->tag_pool)) {
  dev_dbg(&mhba->pdev->dev, "no free tag.\n");
  return MV_QUEUE_COMMAND_RESULT_NO_RESOURCE;
 }
 mvumi_get_ib_list_entry(mhba, &ib_entry);

 cmd->frame->tag = tag_get_one(mhba, &mhba->tag_pool);
 cmd->frame->request_id = mhba->io_seq++;
 cmd->request_id = cmd->frame->request_id;
 mhba->tag_cmd[cmd->frame->tag] = cmd;
 frame_len = sizeof(*ib_frame) - 4 +
    ib_frame->sg_counts * sizeof(struct mvumi_sgl);
 if (mhba->hba_capability & HS_CAPABILITY_SUPPORT_DYN_SRC) {
  struct mvumi_dyn_list_entry *dle;
  dle = ib_entry;
  dle->src_low_addr =
   cpu_to_le32(lower_32_bits(cmd->frame_phys));
  dle->src_high_addr =
   cpu_to_le32(upper_32_bits(cmd->frame_phys));
  dle->if_length = (frame_len >> 2) & 0xFFF;
 } else {
  memcpy(ib_entry, ib_frame, frame_len);
 }
 return MV_QUEUE_COMMAND_RESULT_SENT;
}
