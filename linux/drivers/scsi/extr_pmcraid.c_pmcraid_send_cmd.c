
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* function ) (struct timer_list*) ;scalar_t__ expires; } ;
struct pmcraid_cmd {void (* cmd_done ) (struct pmcraid_cmd*) ;TYPE_1__ timer; } ;


 int _pmcraid_fire_command (struct pmcraid_cmd*) ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void pmcraid_send_cmd(
 struct pmcraid_cmd *cmd,
 void (*cmd_done) (struct pmcraid_cmd *),
 unsigned long timeout,
 void (*timeout_func) (struct timer_list *)
)
{

 cmd->cmd_done = cmd_done;

 if (timeout_func) {

  cmd->timer.expires = jiffies + timeout;
  cmd->timer.function = timeout_func;
  add_timer(&cmd->timer);
 }


 _pmcraid_fire_command(cmd);
}
