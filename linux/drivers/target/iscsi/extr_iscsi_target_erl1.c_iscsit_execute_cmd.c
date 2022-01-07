
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_cmd {int transport_state; TYPE_2__* se_tmr_req; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int cmd_flags; int iscsi_opcode; int logout_reason; int istate_lock; struct iscsi_conn* conn; struct se_cmd se_cmd; int i_state; int data_direction; int immediate_data; int sense_reason; } ;
struct TYPE_4__ {int response; } ;
struct TYPE_3__ {int (* iscsit_get_dataout ) (struct iscsi_conn*,struct iscsi_cmd*,int) ;} ;


 int CMD_T_ABORTED ;
 int DMA_TO_DEVICE ;
 int ICF_GOT_LAST_DATAOUT ;
 int ICF_NON_IMMEDIATE_UNSOLICITED_DATA ;
 int ICF_OOO_CMDSN ;
 int ISTATE_SEND_STATUS ;
 int TCM_RESERVATION_CONFLICT ;
 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 int iscsit_logout_closeconnection (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_logout_closesession (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_logout_removeconnforrecovery (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_set_dataout_sequence_values (struct iscsi_cmd*) ;
 int iscsit_set_unsolicited_dataout (struct iscsi_cmd*) ;
 int pr_err (char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int) ;
 int target_execute_cmd (struct se_cmd*) ;
 int transport_generic_handle_tmr (struct se_cmd*) ;
 int transport_handle_cdb_direct (struct se_cmd*) ;
 int transport_send_check_condition_and_sense (struct se_cmd*,int ,int ) ;

int iscsit_execute_cmd(struct iscsi_cmd *cmd, int ooo)
{
 struct se_cmd *se_cmd = &cmd->se_cmd;
 struct iscsi_conn *conn = cmd->conn;
 int lr = 0;

 spin_lock_bh(&cmd->istate_lock);
 if (ooo)
  cmd->cmd_flags &= ~ICF_OOO_CMDSN;

 switch (cmd->iscsi_opcode) {
 case 130:




  if (cmd->sense_reason) {
   if (cmd->sense_reason == TCM_RESERVATION_CONFLICT) {
    cmd->i_state = ISTATE_SEND_STATUS;
    spin_unlock_bh(&cmd->istate_lock);
    iscsit_add_cmd_to_response_queue(cmd, cmd->conn,
      cmd->i_state);
    return 0;
   }
   spin_unlock_bh(&cmd->istate_lock);
   if (cmd->se_cmd.transport_state & CMD_T_ABORTED)
    return 0;
   return transport_send_check_condition_and_sense(se_cmd,
     cmd->sense_reason, 0);
  }




  if (cmd->immediate_data) {
   if (cmd->cmd_flags & ICF_GOT_LAST_DATAOUT) {
    spin_unlock_bh(&cmd->istate_lock);
    target_execute_cmd(&cmd->se_cmd);
    return 0;
   }
   spin_unlock_bh(&cmd->istate_lock);

   if (!(cmd->cmd_flags &
     ICF_NON_IMMEDIATE_UNSOLICITED_DATA)) {
    if (cmd->se_cmd.transport_state & CMD_T_ABORTED)
     return 0;

    iscsit_set_dataout_sequence_values(cmd);
    conn->conn_transport->iscsit_get_dataout(conn, cmd, 0);
   }
   return 0;
  }



  spin_unlock_bh(&cmd->istate_lock);

  if ((cmd->data_direction == DMA_TO_DEVICE) &&
      !(cmd->cmd_flags & ICF_NON_IMMEDIATE_UNSOLICITED_DATA)) {
   if (cmd->se_cmd.transport_state & CMD_T_ABORTED)
    return 0;

   iscsit_set_unsolicited_dataout(cmd);
  }
  return transport_handle_cdb_direct(&cmd->se_cmd);

 case 131:
 case 128:
  spin_unlock_bh(&cmd->istate_lock);
  iscsit_add_cmd_to_response_queue(cmd, cmd->conn, cmd->i_state);
  break;
 case 129:
  if (cmd->se_cmd.se_tmr_req->response) {
   spin_unlock_bh(&cmd->istate_lock);
   iscsit_add_cmd_to_response_queue(cmd, cmd->conn,
     cmd->i_state);
   return 0;
  }
  spin_unlock_bh(&cmd->istate_lock);

  return transport_generic_handle_tmr(&cmd->se_cmd);
 case 132:
  spin_unlock_bh(&cmd->istate_lock);
  switch (cmd->logout_reason) {
  case 134:
   lr = iscsit_logout_closesession(cmd, cmd->conn);
   break;
  case 135:
   lr = iscsit_logout_closeconnection(cmd, cmd->conn);
   break;
  case 133:
   lr = iscsit_logout_removeconnforrecovery(cmd, cmd->conn);
   break;
  default:
   pr_err("Unknown iSCSI Logout Request Code:"
    " 0x%02x\n", cmd->logout_reason);
   return -1;
  }

  return lr;
 default:
  spin_unlock_bh(&cmd->istate_lock);
  pr_err("Cannot perform out of order execution for"
  " unknown iSCSI Opcode: 0x%02x\n", cmd->iscsi_opcode);
  return -1;
 }

 return 0;
}
