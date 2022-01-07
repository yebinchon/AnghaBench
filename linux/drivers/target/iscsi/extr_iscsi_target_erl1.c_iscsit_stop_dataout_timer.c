
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cmd {int dataout_timer_flags; int dataout_timeout_lock; int init_task_tag; int dataout_timer; } ;


 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 int del_timer_sync (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_stop_dataout_timer(struct iscsi_cmd *cmd)
{
 spin_lock_bh(&cmd->dataout_timeout_lock);
 if (!(cmd->dataout_timer_flags & ISCSI_TF_RUNNING)) {
  spin_unlock_bh(&cmd->dataout_timeout_lock);
  return;
 }
 cmd->dataout_timer_flags |= ISCSI_TF_STOP;
 spin_unlock_bh(&cmd->dataout_timeout_lock);

 del_timer_sync(&cmd->dataout_timer);

 spin_lock_bh(&cmd->dataout_timeout_lock);
 cmd->dataout_timer_flags &= ~ISCSI_TF_RUNNING;
 pr_debug("Stopped DataOUT Timer for ITT: 0x%08x\n",
   cmd->init_task_tag);
 spin_unlock_bh(&cmd->dataout_timeout_lock);
}
