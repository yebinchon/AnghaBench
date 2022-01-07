
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct megasas_instance {int max_fw_cmds; int mfi_pool_lock; int internal_reset_pending_q; TYPE_1__* pdev; struct megasas_cmd** cmd_list; } ;
struct megasas_cmd {int sync_cmd; int list; int scmd; } ;
struct TYPE_2__ {int dev; } ;


 int dev_notice (int *,char*,struct megasas_cmd*,...) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
megasas_internal_reset_defer_cmds(struct megasas_instance *instance)
{
 struct megasas_cmd *cmd;
 int i;
 u16 max_cmd = instance->max_fw_cmds;
 u32 defer_index;
 unsigned long flags;

 defer_index = 0;
 spin_lock_irqsave(&instance->mfi_pool_lock, flags);
 for (i = 0; i < max_cmd; i++) {
  cmd = instance->cmd_list[i];
  if (cmd->sync_cmd == 1 || cmd->scmd) {
   dev_notice(&instance->pdev->dev, "moving cmd[%d]:%p:%d:%p"
     "on the defer queue as internal\n",
    defer_index, cmd, cmd->sync_cmd, cmd->scmd);

   if (!list_empty(&cmd->list)) {
    dev_notice(&instance->pdev->dev, "ERROR while"
     " moving this cmd:%p, %d %p, it was"
     "discovered on some list?\n",
     cmd, cmd->sync_cmd, cmd->scmd);

    list_del_init(&cmd->list);
   }
   defer_index++;
   list_add_tail(&cmd->list,
    &instance->internal_reset_pending_q);
  }
 }
 spin_unlock_irqrestore(&instance->mfi_pool_lock, flags);
}
