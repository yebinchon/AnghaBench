
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int dev_cur_ordered_id; int dev_ordered_sync; int simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {int se_cmd_flags; scalar_t__ sam_task_attr; struct se_device* se_dev; } ;
struct TYPE_2__ {int transport_flags; } ;


 int SCF_TASK_ATTR_SET ;
 scalar_t__ TCM_HEAD_TAG ;
 scalar_t__ TCM_ORDERED_TAG ;
 scalar_t__ TCM_SIMPLE_TAG ;
 int TRANSPORT_FLAG_PASSTHROUGH ;
 int atomic_dec_mb (int *) ;
 int pr_debug (char*,int ) ;
 int target_restart_delayed_cmds (struct se_device*) ;

__attribute__((used)) static void transport_complete_task_attr(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;

 if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH)
  return;

 if (!(cmd->se_cmd_flags & SCF_TASK_ATTR_SET))
  goto restart;

 if (cmd->sam_task_attr == TCM_SIMPLE_TAG) {
  atomic_dec_mb(&dev->simple_cmds);
  dev->dev_cur_ordered_id++;
 } else if (cmd->sam_task_attr == TCM_HEAD_TAG) {
  dev->dev_cur_ordered_id++;
  pr_debug("Incremented dev_cur_ordered_id: %u for HEAD_OF_QUEUE\n",
    dev->dev_cur_ordered_id);
 } else if (cmd->sam_task_attr == TCM_ORDERED_TAG) {
  atomic_dec_mb(&dev->dev_ordered_sync);

  dev->dev_cur_ordered_id++;
  pr_debug("Incremented dev_cur_ordered_id: %u for ORDERED\n",
    dev->dev_cur_ordered_id);
 }
 cmd->se_cmd_flags &= ~SCF_TASK_ATTR_SET;

restart:
 target_restart_delayed_cmds(dev);
}
