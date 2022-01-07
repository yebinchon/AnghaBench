
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxp_nci_fw_info {scalar_t__ written; int frame_size; scalar_t__* data; int size; int cmd_completion; int work; scalar_t__ fw; scalar_t__ cmd_result; } ;
struct nxp_nci_info {struct nxp_nci_fw_info fw_info; } ;


 int EMSGSIZE ;
 int ETIMEDOUT ;
 int NXP_NCI_FW_ANSWER_TIMEOUT ;
 scalar_t__ NXP_NCI_FW_CMD_RESET ;
 int NXP_NCI_FW_FRAME_LEN_MASK ;
 scalar_t__ NXP_NCI_FW_HDR_LEN ;
 int get_unaligned_be16 (scalar_t__*) ;
 int nxp_nci_fw_send_chunk (struct nxp_nci_info*) ;
 int reinit_completion (int *) ;
 int schedule_work (int *) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int nxp_nci_fw_send(struct nxp_nci_info *info)
{
 struct nxp_nci_fw_info *fw_info = &info->fw_info;
 long completion_rc;
 int r;

 reinit_completion(&fw_info->cmd_completion);

 if (fw_info->written == 0) {
  fw_info->frame_size = get_unaligned_be16(fw_info->data) &
          NXP_NCI_FW_FRAME_LEN_MASK;
  fw_info->data += NXP_NCI_FW_HDR_LEN;
  fw_info->size -= NXP_NCI_FW_HDR_LEN;
 }

 if (fw_info->frame_size > fw_info->size)
  return -EMSGSIZE;

 r = nxp_nci_fw_send_chunk(info);
 if (r < 0)
  return r;

 fw_info->written += r;

 if (*fw_info->data == NXP_NCI_FW_CMD_RESET) {
  fw_info->cmd_result = 0;
  if (fw_info->fw)
   schedule_work(&fw_info->work);
 } else {
  completion_rc = wait_for_completion_interruptible_timeout(
   &fw_info->cmd_completion, NXP_NCI_FW_ANSWER_TIMEOUT);
  if (completion_rc == 0)
   return -ETIMEDOUT;
 }

 return 0;
}
