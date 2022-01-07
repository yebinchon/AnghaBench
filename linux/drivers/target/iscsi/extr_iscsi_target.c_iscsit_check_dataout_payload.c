
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_data {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int cmd_flags; int se_cmd; int istate_lock; int i_state; struct iscsi_conn* conn; } ;
struct TYPE_2__ {int (* iscsit_get_dataout ) (struct iscsi_conn*,struct iscsi_cmd*,int) ;} ;


 int DATAOUT_NORMAL ;
 int DATAOUT_SEND_R2T ;
 int DATAOUT_SEND_TO_TRANSPORT ;
 int DATAOUT_WITHIN_COMMAND_RECOVERY ;
 int ICF_GOT_LAST_DATAOUT ;
 int ICF_OOO_CMDSN ;
 int ISTATE_RECEIVED_LAST_DATAOUT ;
 int iscsit_check_post_dataout (struct iscsi_cmd*,unsigned char*,int) ;
 int iscsit_set_dataout_sequence_values (struct iscsi_cmd*) ;
 int iscsit_stop_dataout_timer (struct iscsi_cmd*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int) ;
 int target_execute_cmd (int *) ;

int
iscsit_check_dataout_payload(struct iscsi_cmd *cmd, struct iscsi_data *hdr,
        bool data_crc_failed)
{
 struct iscsi_conn *conn = cmd->conn;
 int rc, ooo_cmdsn;




 rc = iscsit_check_post_dataout(cmd, (unsigned char *)hdr, data_crc_failed);
 if ((rc == DATAOUT_NORMAL) || (rc == DATAOUT_WITHIN_COMMAND_RECOVERY))
  return 0;
 else if (rc == DATAOUT_SEND_R2T) {
  iscsit_set_dataout_sequence_values(cmd);
  conn->conn_transport->iscsit_get_dataout(conn, cmd, 0);
 } else if (rc == DATAOUT_SEND_TO_TRANSPORT) {




  spin_lock_bh(&cmd->istate_lock);
  ooo_cmdsn = (cmd->cmd_flags & ICF_OOO_CMDSN);
  cmd->cmd_flags |= ICF_GOT_LAST_DATAOUT;
  cmd->i_state = ISTATE_RECEIVED_LAST_DATAOUT;
  spin_unlock_bh(&cmd->istate_lock);

  iscsit_stop_dataout_timer(cmd);
  if (ooo_cmdsn)
   return 0;
  target_execute_cmd(&cmd->se_cmd);
  return 0;
 } else
  return -1;

 return 0;
}
