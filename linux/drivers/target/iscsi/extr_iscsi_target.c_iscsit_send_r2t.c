
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct scsi_lun {int dummy; } ;
struct iscsi_r2t_rsp {void* statsn; void* data_length; void* data_offset; void* r2tsn; void* max_cmdsn; void* exp_cmdsn; void* ttt; int itt; int lun; int flags; int opcode; } ;
struct iscsi_r2t {int sent_r2t; int xfer_len; int offset; int r2t_sn; int targ_xfer_tag; int recovery_r2t; } ;
struct iscsi_conn {TYPE_2__* conn_transport; int cid; TYPE_3__* sess; int stat_sn; } ;
struct TYPE_4__ {int orig_fe_lun; } ;
struct iscsi_cmd {int dataout_timeout_lock; int r2t_lock; int init_task_tag; TYPE_1__ se_cmd; scalar_t__ pdu; } ;
struct TYPE_6__ {int max_cmd_sn; int exp_cmd_sn; } ;
struct TYPE_5__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;int (* iscsit_get_r2t_ttt ) (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_r2t*) ;} ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_HDR_LEN ;
 int ISCSI_OP_R2T ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (int ) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 struct iscsi_r2t* iscsit_get_r2t_from_list (struct iscsi_cmd*) ;
 int iscsit_start_dataout_timer (struct iscsi_cmd*,struct iscsi_conn*) ;
 int memset (struct iscsi_r2t_rsp*,int ,int ) ;
 int ntohl (void*) ;
 int pr_debug (char*,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int session_get_next_ttt (TYPE_3__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_r2t*) ;
 int stub2 (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;

__attribute__((used)) static int iscsit_send_r2t(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn)
{
 struct iscsi_r2t *r2t;
 struct iscsi_r2t_rsp *hdr;
 int ret;

 r2t = iscsit_get_r2t_from_list(cmd);
 if (!r2t)
  return -1;

 hdr = (struct iscsi_r2t_rsp *) cmd->pdu;
 memset(hdr, 0, ISCSI_HDR_LEN);
 hdr->opcode = ISCSI_OP_R2T;
 hdr->flags |= ISCSI_FLAG_CMD_FINAL;
 int_to_scsilun(cmd->se_cmd.orig_fe_lun,
   (struct scsi_lun *)&hdr->lun);
 hdr->itt = cmd->init_task_tag;
 if (conn->conn_transport->iscsit_get_r2t_ttt)
  conn->conn_transport->iscsit_get_r2t_ttt(conn, cmd, r2t);
 else
  r2t->targ_xfer_tag = session_get_next_ttt(conn->sess);
 hdr->ttt = cpu_to_be32(r2t->targ_xfer_tag);
 hdr->statsn = cpu_to_be32(conn->stat_sn);
 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));
 hdr->r2tsn = cpu_to_be32(r2t->r2t_sn);
 hdr->data_offset = cpu_to_be32(r2t->offset);
 hdr->data_length = cpu_to_be32(r2t->xfer_len);

 pr_debug("Built %sR2T, ITT: 0x%08x, TTT: 0x%08x, StatSN:"
  " 0x%08x, R2TSN: 0x%08x, Offset: %u, DDTL: %u, CID: %hu\n",
  (!r2t->recovery_r2t) ? "" : "Recovery ", cmd->init_task_tag,
  r2t->targ_xfer_tag, ntohl(hdr->statsn), r2t->r2t_sn,
   r2t->offset, r2t->xfer_len, conn->cid);

 spin_lock_bh(&cmd->r2t_lock);
 r2t->sent_r2t = 1;
 spin_unlock_bh(&cmd->r2t_lock);

 ret = conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0), ((void*)0), 0);
 if (ret < 0) {
  return ret;
 }

 spin_lock_bh(&cmd->dataout_timeout_lock);
 iscsit_start_dataout_timer(cmd, conn);
 spin_unlock_bh(&cmd->dataout_timeout_lock);

 return 0;
}
