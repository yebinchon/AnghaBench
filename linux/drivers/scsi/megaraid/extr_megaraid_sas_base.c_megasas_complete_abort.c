
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int abort_cmd_wait_q; } ;
struct megasas_cmd {scalar_t__ cmd_status_drv; scalar_t__ sync_cmd; } ;


 int wake_up (int *) ;

__attribute__((used)) static void
megasas_complete_abort(struct megasas_instance *instance,
         struct megasas_cmd *cmd)
{
 if (cmd->sync_cmd) {
  cmd->sync_cmd = 0;
  cmd->cmd_status_drv = 0;
  wake_up(&instance->abort_cmd_wait_q);
 }
}
