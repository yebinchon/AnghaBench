
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int check_immediate_queue; int cid; int sess; } ;
struct iscsi_cmd {int i_state; int init_task_tag; int iscsi_opcode; int istate_lock; } ;


 int ECONNRESET ;
 void* ISTATE_SENT_STATUS ;
 scalar_t__ atomic_read (int *) ;
 int iscsit_fall_back_to_erl0 (int ) ;
 int iscsit_logout_post_handler (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_conn_drop_async_message (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_datain (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_logout (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_nopin (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_reject (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_response (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_task_mgt_rsp (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_text_rsp (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_tmr_post_handler (struct iscsi_cmd*,struct iscsi_conn*) ;
 int pr_err (char*,int ,int ,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int
iscsit_response_queue(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
 int ret;

check_rsp_state:
 switch (state) {
 case 135:
  ret = iscsit_send_datain(cmd, conn);
  if (ret < 0)
   goto err;
  else if (!ret)

   goto check_rsp_state;
  else if (ret == 1) {

   spin_lock_bh(&cmd->istate_lock);
   cmd->i_state = ISTATE_SENT_STATUS;
   spin_unlock_bh(&cmd->istate_lock);

   if (atomic_read(&conn->check_immediate_queue))
    return 1;

   return 0;
  } else if (ret == 2) {


   spin_lock_bh(&cmd->istate_lock);
   cmd->i_state = 131;
   spin_unlock_bh(&cmd->istate_lock);
   state = 131;
   goto check_rsp_state;
  }

  break;
 case 131:
 case 130:
  ret = iscsit_send_response(cmd, conn);
  break;
 case 134:
  ret = iscsit_send_logout(cmd, conn);
  break;
 case 136:
  ret = iscsit_send_conn_drop_async_message(
   cmd, conn);
  break;
 case 133:
  ret = iscsit_send_nopin(cmd, conn);
  break;
 case 132:
  ret = iscsit_send_reject(cmd, conn);
  break;
 case 129:
  ret = iscsit_send_task_mgt_rsp(cmd, conn);
  if (ret != 0)
   break;
  ret = iscsit_tmr_post_handler(cmd, conn);
  if (ret != 0)
   iscsit_fall_back_to_erl0(conn->sess);
  break;
 case 128:
  ret = iscsit_send_text_rsp(cmd, conn);
  break;
 default:
  pr_err("Unknown Opcode: 0x%02x ITT:"
         " 0x%08x, i_state: %d on CID: %hu\n",
         cmd->iscsi_opcode, cmd->init_task_tag,
         state, conn->cid);
  goto err;
 }
 if (ret < 0)
  goto err;

 switch (state) {
 case 134:
  if (!iscsit_logout_post_handler(cmd, conn))
   return -ECONNRESET;

 case 131:
 case 136:
 case 133:
 case 130:
 case 128:
 case 129:
 case 132:
  spin_lock_bh(&cmd->istate_lock);
  cmd->i_state = ISTATE_SENT_STATUS;
  spin_unlock_bh(&cmd->istate_lock);
  break;
 default:
  pr_err("Unknown Opcode: 0x%02x ITT:"
         " 0x%08x, i_state: %d on CID: %hu\n",
         cmd->iscsi_opcode, cmd->init_task_tag,
         cmd->i_state, conn->cid);
  goto err;
 }

 if (atomic_read(&conn->check_immediate_queue))
  return 1;

 return 0;

err:
 return -1;
}
