
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_transport_stop_comp; int (* transport_complete_callback ) (struct se_cmd*,int,int*) ;int work; } ;


 int CMD_T_ABORTED ;
 int CMD_T_STOP ;
 int INIT_WORK (int *,int ) ;
 int complete_all (int *) ;
 int queue_work (int ,int *) ;
 int stub1 (struct se_cmd*,int,int*) ;
 int stub2 (struct se_cmd*,int,int*) ;
 int target_abort_work ;
 int target_completion_wq ;

__attribute__((used)) static bool target_cmd_interrupted(struct se_cmd *cmd)
{
 int post_ret;

 if (cmd->transport_state & CMD_T_ABORTED) {
  if (cmd->transport_complete_callback)
   cmd->transport_complete_callback(cmd, 0, &post_ret);
  INIT_WORK(&cmd->work, target_abort_work);
  queue_work(target_completion_wq, &cmd->work);
  return 1;
 } else if (cmd->transport_state & CMD_T_STOP) {
  if (cmd->transport_complete_callback)
   cmd->transport_complete_callback(cmd, 0, &post_ret);
  complete_all(&cmd->t_transport_stop_comp);
  return 1;
 }

 return 0;
}
