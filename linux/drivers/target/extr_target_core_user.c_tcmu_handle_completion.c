
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct tcmu_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ read_len; int scsi_status; int sense_buffer; } ;
struct TYPE_3__ {int uflags; } ;
struct tcmu_cmd_entry {TYPE_2__ rsp; TYPE_1__ hdr; } ;
struct tcmu_cmd {int dbi_cnt; struct se_cmd* se_cmd; int queue_entry; int flags; struct tcmu_dev* tcmu_dev; } ;
struct se_cmd {scalar_t__ data_length; int se_cmd_flags; struct se_cmd* data_direction; } ;


 struct se_cmd* DMA_FROM_DEVICE ;
 struct se_cmd* DMA_NONE ;
 struct se_cmd* DMA_TO_DEVICE ;
 int SAM_STAT_CHECK_CONDITION ;
 int SCF_BIDI ;
 int SCF_TREAT_READ_AS_NORMAL ;
 int TCMU_CMD_BIT_EXPIRED ;
 int TCMU_UFLAG_READ_LEN ;
 int TCMU_UFLAG_UNKNOWN_OP ;
 int WARN_ON_ONCE (struct se_cmd*) ;
 int gather_data_area (struct tcmu_dev*,struct tcmu_cmd*,int,scalar_t__) ;
 int list_del_init (int *) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_warn (char*,struct se_cmd*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int target_complete_cmd_with_length (struct se_cmd*,int ,scalar_t__) ;
 int tcmu_cmd_free_data (struct tcmu_cmd*,int ) ;
 int tcmu_cmd_reset_dbi_cur (struct tcmu_cmd*) ;
 int tcmu_free_cmd (struct tcmu_cmd*) ;
 scalar_t__ test_bit (int ,int *) ;
 int transport_copy_sense_to_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static void tcmu_handle_completion(struct tcmu_cmd *cmd, struct tcmu_cmd_entry *entry)
{
 struct se_cmd *se_cmd = cmd->se_cmd;
 struct tcmu_dev *udev = cmd->tcmu_dev;
 bool read_len_valid = 0;
 uint32_t read_len;





 if (test_bit(TCMU_CMD_BIT_EXPIRED, &cmd->flags)) {
  WARN_ON_ONCE(se_cmd);
  goto out;
 }

 list_del_init(&cmd->queue_entry);

 tcmu_cmd_reset_dbi_cur(cmd);

 if (entry->hdr.uflags & TCMU_UFLAG_UNKNOWN_OP) {
  pr_warn("TCMU: Userspace set UNKNOWN_OP flag on se_cmd %p\n",
   cmd->se_cmd);
  entry->rsp.scsi_status = SAM_STAT_CHECK_CONDITION;
  goto done;
 }

 read_len = se_cmd->data_length;
 if (se_cmd->data_direction == DMA_FROM_DEVICE &&
     (entry->hdr.uflags & TCMU_UFLAG_READ_LEN) && entry->rsp.read_len) {
  read_len_valid = 1;
  if (entry->rsp.read_len < read_len)
   read_len = entry->rsp.read_len;
 }

 if (entry->rsp.scsi_status == SAM_STAT_CHECK_CONDITION) {
  transport_copy_sense_to_cmd(se_cmd, entry->rsp.sense_buffer);
  if (!read_len_valid )
   goto done;
  else
   se_cmd->se_cmd_flags |= SCF_TREAT_READ_AS_NORMAL;
 }
 if (se_cmd->se_cmd_flags & SCF_BIDI) {

  gather_data_area(udev, cmd, 1, read_len);
 } else if (se_cmd->data_direction == DMA_FROM_DEVICE) {
  gather_data_area(udev, cmd, 0, read_len);
 } else if (se_cmd->data_direction == DMA_TO_DEVICE) {

 } else if (se_cmd->data_direction != DMA_NONE) {
  pr_warn("TCMU: data direction was %d!\n",
   se_cmd->data_direction);
 }

done:
 if (read_len_valid) {
  pr_debug("read_len = %d\n", read_len);
  target_complete_cmd_with_length(cmd->se_cmd,
     entry->rsp.scsi_status, read_len);
 } else
  target_complete_cmd(cmd->se_cmd, entry->rsp.scsi_status);

out:
 cmd->se_cmd = ((void*)0);
 tcmu_cmd_free_data(cmd, cmd->dbi_cnt);
 tcmu_free_cmd(cmd);
}
