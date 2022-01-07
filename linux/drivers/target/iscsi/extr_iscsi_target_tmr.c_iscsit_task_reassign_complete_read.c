
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_state; } ;
struct iscsi_tmr_req {scalar_t__ exp_data_sn; } ;
struct iscsi_datain_req {int generate_recovery_values; int recovery; scalar_t__ runlength; scalar_t__ begrun; scalar_t__ data_sn; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int i_state; struct se_cmd se_cmd; int init_task_tag; scalar_t__ acked_data_sn; int cmd_flags; struct iscsi_conn* conn; } ;


 int CMD_T_COMPLETE ;
 int CMD_T_SENT ;
 int DATAIN_CONNECTION_RECOVERY ;
 int ICF_GOT_DATACK_SNACK ;
 int ISTATE_SEND_DATAIN ;
 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 struct iscsi_datain_req* iscsit_allocate_datain_req () ;
 int iscsit_attach_datain_req (struct iscsi_cmd*,struct iscsi_datain_req*) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ,int ) ;
 int transport_handle_cdb_direct (struct se_cmd*) ;

__attribute__((used)) static int iscsit_task_reassign_complete_read(
 struct iscsi_cmd *cmd,
 struct iscsi_tmr_req *tmr_req)
{
 struct iscsi_conn *conn = cmd->conn;
 struct iscsi_datain_req *dr;
 struct se_cmd *se_cmd = &cmd->se_cmd;




 if (!tmr_req->exp_data_sn) {
  cmd->cmd_flags &= ~ICF_GOT_DATACK_SNACK;
  cmd->acked_data_sn = 0;
 } else {
  cmd->cmd_flags |= ICF_GOT_DATACK_SNACK;
  cmd->acked_data_sn = (tmr_req->exp_data_sn - 1);
 }

 if (!(cmd->se_cmd.transport_state & CMD_T_SENT)) {
  pr_debug("READ ITT: 0x%08x: t_state: %d never sent to"
   " transport\n", cmd->init_task_tag,
   cmd->se_cmd.t_state);
  transport_handle_cdb_direct(se_cmd);
  return 0;
 }

 if (!(se_cmd->transport_state & CMD_T_COMPLETE)) {
  pr_err("READ ITT: 0x%08x: t_state: %d, never returned"
   " from transport\n", cmd->init_task_tag,
   cmd->se_cmd.t_state);
  return -1;
 }

 dr = iscsit_allocate_datain_req();
 if (!dr)
  return -1;




 dr->data_sn = dr->begrun = tmr_req->exp_data_sn;
 dr->runlength = 0;
 dr->generate_recovery_values = 1;
 dr->recovery = DATAIN_CONNECTION_RECOVERY;

 iscsit_attach_datain_req(cmd, dr);

 cmd->i_state = ISTATE_SEND_DATAIN;
 iscsit_add_cmd_to_response_queue(cmd, conn, cmd->i_state);
 return 0;
}
