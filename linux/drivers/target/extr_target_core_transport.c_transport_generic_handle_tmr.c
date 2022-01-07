
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int transport_state; int work; int tag; TYPE_1__* se_tmr_req; int t_state_lock; int t_state; } ;
struct TYPE_2__ {int ref_task_tag; int function; } ;


 int CMD_T_ABORTED ;
 int CMD_T_ACTIVE ;
 int INIT_WORK (int *,int ) ;
 int TRANSPORT_ISTATE_PROCESSING ;
 int pr_warn_ratelimited (char*,int ,int ,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int target_handle_abort (struct se_cmd*) ;
 int target_tmr_work ;

int transport_generic_handle_tmr(
 struct se_cmd *cmd)
{
 unsigned long flags;
 bool aborted = 0;

 spin_lock_irqsave(&cmd->t_state_lock, flags);
 if (cmd->transport_state & CMD_T_ABORTED) {
  aborted = 1;
 } else {
  cmd->t_state = TRANSPORT_ISTATE_PROCESSING;
  cmd->transport_state |= CMD_T_ACTIVE;
 }
 spin_unlock_irqrestore(&cmd->t_state_lock, flags);

 if (aborted) {
  pr_warn_ratelimited("handle_tmr caught CMD_T_ABORTED TMR %d ref_tag: %llu tag: %llu\n",
        cmd->se_tmr_req->function,
        cmd->se_tmr_req->ref_task_tag, cmd->tag);
  target_handle_abort(cmd);
  return 0;
 }

 INIT_WORK(&cmd->work, target_tmr_work);
 schedule_work(&cmd->work);
 return 0;
}
