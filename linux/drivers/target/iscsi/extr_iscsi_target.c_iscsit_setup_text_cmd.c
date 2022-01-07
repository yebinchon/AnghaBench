
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_text {int flags; int opcode; int exp_statsn; int cmdsn; int itt; int dlength; } ;
struct iscsi_conn {TYPE_2__* sess; TYPE_1__* conn_ops; } ;
struct iscsi_cmd {int immediate_cmd; int targ_xfer_tag; int * text_in_ptr; int data_direction; void* exp_stat_sn; void* cmd_sn; int init_task_tag; int i_state; int iscsi_opcode; } ;
struct TYPE_4__ {int init_task_tag; } ;
struct TYPE_3__ {int MaxXmitDataSegmentLength; } ;


 int DMA_NONE ;
 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_FLAG_TEXT_CONTINUE ;
 int ISCSI_OP_IMMEDIATE ;
 int ISCSI_OP_TEXT ;
 int ISCSI_REASON_CMD_NOT_SUPPORTED ;
 int ISCSI_REASON_PROTOCOL_ERROR ;
 int ISTATE_SEND_TEXTRSP ;
 void* be32_to_cpu (int ) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 int kfree (int *) ;
 int ntoh24 (int ) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int pr_err (char*,...) ;

int
iscsit_setup_text_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
        struct iscsi_text *hdr)
{
 u32 payload_length = ntoh24(hdr->dlength);

 if (payload_length > conn->conn_ops->MaxXmitDataSegmentLength) {
  pr_err("Unable to accept text parameter length: %u"
   "greater than MaxXmitDataSegmentLength %u.\n",
         payload_length, conn->conn_ops->MaxXmitDataSegmentLength);
  return iscsit_reject_cmd(cmd, ISCSI_REASON_PROTOCOL_ERROR,
      (unsigned char *)hdr);
 }

 if (!(hdr->flags & ISCSI_FLAG_CMD_FINAL) ||
      (hdr->flags & ISCSI_FLAG_TEXT_CONTINUE)) {
  pr_err("Multi sequence text commands currently not supported\n");
  return iscsit_reject_cmd(cmd, ISCSI_REASON_CMD_NOT_SUPPORTED,
     (unsigned char *)hdr);
 }

 pr_debug("Got Text Request: ITT: 0x%08x, CmdSN: 0x%08x,"
  " ExpStatSN: 0x%08x, Length: %u\n", hdr->itt, hdr->cmdsn,
  hdr->exp_statsn, payload_length);

 cmd->iscsi_opcode = ISCSI_OP_TEXT;
 cmd->i_state = ISTATE_SEND_TEXTRSP;
 cmd->immediate_cmd = ((hdr->opcode & ISCSI_OP_IMMEDIATE) ? 1 : 0);
 conn->sess->init_task_tag = cmd->init_task_tag = hdr->itt;
 cmd->targ_xfer_tag = 0xFFFFFFFF;
 cmd->cmd_sn = be32_to_cpu(hdr->cmdsn);
 cmd->exp_stat_sn = be32_to_cpu(hdr->exp_statsn);
 cmd->data_direction = DMA_NONE;
 kfree(cmd->text_in_ptr);
 cmd->text_in_ptr = ((void*)0);

 return 0;
}
