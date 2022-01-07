
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int cid; int cmd_lock; } ;
struct iscsi_cmd {int init_task_tag; int iscsi_opcode; int i_conn_node; } ;






 int iscsit_free_cmd (struct iscsi_cmd*,int) ;
 int iscsit_mod_nopin_response_timer (struct iscsi_conn*) ;
 int iscsit_send_r2t (struct iscsi_cmd*,struct iscsi_conn*) ;
 int iscsit_send_unsolicited_nopin (struct iscsi_cmd*,struct iscsi_conn*,int) ;
 int list_del_init (int *) ;
 int pr_err (char*,int ,int ,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int
iscsit_immediate_queue(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
 int ret;

 switch (state) {
 case 128:
  ret = iscsit_send_r2t(cmd, conn);
  if (ret < 0)
   goto err;
  break;
 case 131:
  spin_lock_bh(&conn->cmd_lock);
  list_del_init(&cmd->i_conn_node);
  spin_unlock_bh(&conn->cmd_lock);

  iscsit_free_cmd(cmd, 0);
  break;
 case 129:
  iscsit_mod_nopin_response_timer(conn);
  ret = iscsit_send_unsolicited_nopin(cmd, conn, 1);
  if (ret < 0)
   goto err;
  break;
 case 130:
  ret = iscsit_send_unsolicited_nopin(cmd, conn, 0);
  if (ret < 0)
   goto err;
  break;
 default:
  pr_err("Unknown Opcode: 0x%02x ITT:"
         " 0x%08x, i_state: %d on CID: %hu\n",
         cmd->iscsi_opcode, cmd->init_task_tag, state,
         conn->cid);
  goto err;
 }

 return 0;

err:
 return -1;
}
