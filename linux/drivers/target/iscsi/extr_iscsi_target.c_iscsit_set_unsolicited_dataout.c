
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cmd {int dataout_timeout_lock; int conn; } ;


 int iscsit_set_dataout_sequence_values (struct iscsi_cmd*) ;
 int iscsit_start_dataout_timer (struct iscsi_cmd*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_set_unsolicited_dataout(struct iscsi_cmd *cmd)
{
 iscsit_set_dataout_sequence_values(cmd);

 spin_lock_bh(&cmd->dataout_timeout_lock);
 iscsit_start_dataout_timer(cmd, cmd->conn);
 spin_unlock_bh(&cmd->dataout_timeout_lock);
}
