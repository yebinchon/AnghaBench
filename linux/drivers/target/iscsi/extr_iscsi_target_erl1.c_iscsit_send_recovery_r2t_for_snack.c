
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_r2t {scalar_t__ sent_r2t; } ;
struct iscsi_cmd {int conn; int r2t_lock; } ;


 int ISTATE_SEND_R2T ;
 int iscsit_add_cmd_to_immediate_queue (struct iscsi_cmd*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsit_send_recovery_r2t_for_snack(
 struct iscsi_cmd *cmd,
 struct iscsi_r2t *r2t)
{





 spin_lock_bh(&cmd->r2t_lock);
 if (!r2t->sent_r2t) {
  spin_unlock_bh(&cmd->r2t_lock);
  return 0;
 }
 r2t->sent_r2t = 0;
 spin_unlock_bh(&cmd->r2t_lock);

 iscsit_add_cmd_to_immediate_queue(cmd, cmd->conn, ISTATE_SEND_R2T);

 return 0;
}
