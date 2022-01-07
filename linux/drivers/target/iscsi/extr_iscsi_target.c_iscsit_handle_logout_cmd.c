
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int lock; int abnormal_logouts; int normal_logouts; } ;
struct iscsi_tiqn {TYPE_1__ logout_stats; } ;
struct iscsi_logout {int flags; int opcode; int cmdsn; int exp_statsn; int cid; int itt; } ;
struct iscsi_conn {scalar_t__ conn_state; int cmd_lock; int conn_cmd_list; int cid; TYPE_2__* sess; } ;
struct iscsi_cmd {int immediate_cmd; int targ_xfer_tag; int logout_reason; int i_conn_node; int data_direction; int logout_cid; void* exp_stat_sn; void* cmd_sn; int init_task_tag; int i_state; int iscsi_opcode; } ;
struct TYPE_4__ {int init_task_tag; } ;


 int CMDSN_ERROR_CANNOT_RECOVER ;
 int CMDSN_LOWER_THAN_EXP ;
 int DMA_NONE ;
 int ISCSI_LOGOUT_REASON_CLOSE_CONNECTION ;
 int ISCSI_LOGOUT_REASON_CLOSE_SESSION ;
 int ISCSI_LOGOUT_REASON_RECOVERY ;
 int ISCSI_OP_IMMEDIATE ;
 int ISCSI_OP_LOGOUT ;
 int ISTATE_SEND_LOGOUTRSP ;
 scalar_t__ TARG_CONN_STATE_LOGGED_IN ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int iscsit_ack_from_expstatsn (struct iscsi_conn*,void*) ;
 int iscsit_execute_cmd (struct iscsi_cmd*,int ) ;
 int iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int iscsit_sequence_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int ) ;
 struct iscsi_tiqn* iscsit_snmp_get_tiqn (struct iscsi_conn*) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int ,int ,int,int ,int ) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

int
iscsit_handle_logout_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
   unsigned char *buf)
{
 int cmdsn_ret, logout_remove = 0;
 u8 reason_code = 0;
 struct iscsi_logout *hdr;
 struct iscsi_tiqn *tiqn = iscsit_snmp_get_tiqn(conn);

 hdr = (struct iscsi_logout *) buf;
 reason_code = (hdr->flags & 0x7f);

 if (tiqn) {
  spin_lock(&tiqn->logout_stats.lock);
  if (reason_code == ISCSI_LOGOUT_REASON_CLOSE_SESSION)
   tiqn->logout_stats.normal_logouts++;
  else
   tiqn->logout_stats.abnormal_logouts++;
  spin_unlock(&tiqn->logout_stats.lock);
 }

 pr_debug("Got Logout Request ITT: 0x%08x CmdSN: 0x%08x"
  " ExpStatSN: 0x%08x Reason: 0x%02x CID: %hu on CID: %hu\n",
  hdr->itt, hdr->cmdsn, hdr->exp_statsn, reason_code,
  hdr->cid, conn->cid);

 if (conn->conn_state != TARG_CONN_STATE_LOGGED_IN) {
  pr_err("Received logout request on connection that"
   " is not in logged in state, ignoring request.\n");
  iscsit_free_cmd(cmd, 0);
  return 0;
 }

 cmd->iscsi_opcode = ISCSI_OP_LOGOUT;
 cmd->i_state = ISTATE_SEND_LOGOUTRSP;
 cmd->immediate_cmd = ((hdr->opcode & ISCSI_OP_IMMEDIATE) ? 1 : 0);
 conn->sess->init_task_tag = cmd->init_task_tag = hdr->itt;
 cmd->targ_xfer_tag = 0xFFFFFFFF;
 cmd->cmd_sn = be32_to_cpu(hdr->cmdsn);
 cmd->exp_stat_sn = be32_to_cpu(hdr->exp_statsn);
 cmd->logout_cid = be16_to_cpu(hdr->cid);
 cmd->logout_reason = reason_code;
 cmd->data_direction = DMA_NONE;





 if ((reason_code == ISCSI_LOGOUT_REASON_CLOSE_SESSION) ||
    ((reason_code == ISCSI_LOGOUT_REASON_CLOSE_CONNECTION) &&
     be16_to_cpu(hdr->cid) == conn->cid))
  logout_remove = 1;

 spin_lock_bh(&conn->cmd_lock);
 list_add_tail(&cmd->i_conn_node, &conn->conn_cmd_list);
 spin_unlock_bh(&conn->cmd_lock);

 if (reason_code != ISCSI_LOGOUT_REASON_RECOVERY)
  iscsit_ack_from_expstatsn(conn, be32_to_cpu(hdr->exp_statsn));





 if (cmd->immediate_cmd) {
  int ret = iscsit_execute_cmd(cmd, 0);

  if (ret < 0)
   return ret;
 } else {
  cmdsn_ret = iscsit_sequence_cmd(conn, cmd, buf, hdr->cmdsn);
  if (cmdsn_ret == CMDSN_LOWER_THAN_EXP)
   logout_remove = 0;
  else if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
   return -1;
 }

 return logout_remove;
}
