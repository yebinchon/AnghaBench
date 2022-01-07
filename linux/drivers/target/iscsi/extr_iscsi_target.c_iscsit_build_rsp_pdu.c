
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iscsi_scsi_rsp {void* max_cmdsn; void* exp_cmdsn; void* statsn; int itt; int cmd_status; int response; void* residual_count; int flags; int opcode; } ;
struct iscsi_conn {int cid; TYPE_2__* sess; int stat_sn; } ;
struct TYPE_3__ {int se_cmd_flags; int scsi_status; scalar_t__ residual_count; } ;
struct iscsi_cmd {TYPE_1__ se_cmd; scalar_t__ stat_sn; int init_task_tag; int iscsi_response; } ;
struct TYPE_4__ {int max_cmd_sn; scalar_t__ exp_cmd_sn; int rsp_pdus; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_FLAG_CMD_OVERFLOW ;
 int ISCSI_FLAG_CMD_UNDERFLOW ;
 int ISCSI_HDR_LEN ;
 int ISCSI_OP_SCSI_CMD_RSP ;
 int SCF_OVERFLOW_BIT ;
 int SCF_UNDERFLOW_BIT ;
 int atomic_long_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (scalar_t__) ;
 int iscsit_increment_maxcmdsn (struct iscsi_cmd*,TYPE_2__*) ;
 int memset (struct iscsi_scsi_rsp*,int ,int ) ;
 int pr_debug (char*,int ,scalar_t__,int ,int ,int ) ;

void iscsit_build_rsp_pdu(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
   bool inc_stat_sn, struct iscsi_scsi_rsp *hdr)
{
 if (inc_stat_sn)
  cmd->stat_sn = conn->stat_sn++;

 atomic_long_inc(&conn->sess->rsp_pdus);

 memset(hdr, 0, ISCSI_HDR_LEN);
 hdr->opcode = ISCSI_OP_SCSI_CMD_RSP;
 hdr->flags |= ISCSI_FLAG_CMD_FINAL;
 if (cmd->se_cmd.se_cmd_flags & SCF_OVERFLOW_BIT) {
  hdr->flags |= ISCSI_FLAG_CMD_OVERFLOW;
  hdr->residual_count = cpu_to_be32(cmd->se_cmd.residual_count);
 } else if (cmd->se_cmd.se_cmd_flags & SCF_UNDERFLOW_BIT) {
  hdr->flags |= ISCSI_FLAG_CMD_UNDERFLOW;
  hdr->residual_count = cpu_to_be32(cmd->se_cmd.residual_count);
 }
 hdr->response = cmd->iscsi_response;
 hdr->cmd_status = cmd->se_cmd.scsi_status;
 hdr->itt = cmd->init_task_tag;
 hdr->statsn = cpu_to_be32(cmd->stat_sn);

 iscsit_increment_maxcmdsn(cmd, conn->sess);
 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));

 pr_debug("Built SCSI Response, ITT: 0x%08x, StatSN: 0x%08x,"
  " Response: 0x%02x, SAM Status: 0x%02x, CID: %hu\n",
  cmd->init_task_tag, cmd->stat_sn, cmd->se_cmd.scsi_status,
  cmd->se_cmd.scsi_status, conn->cid);
}
