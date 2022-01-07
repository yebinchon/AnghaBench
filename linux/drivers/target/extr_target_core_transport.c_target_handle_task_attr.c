
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {int delayed_cmd_lock; int delayed_cmd_list; int dev_ordered_sync; int simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {int sam_task_attr; int * t_task_cdb; int se_delayed_node; int se_cmd_flags; struct se_device* se_dev; } ;
struct TYPE_2__ {int transport_flags; } ;


 int SCF_TASK_ATTR_SET ;


 int TRANSPORT_FLAG_PASSTHROUGH ;
 int atomic_inc_mb (int *) ;
 scalar_t__ atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool target_handle_task_attr(struct se_cmd *cmd)
{
 struct se_device *dev = cmd->se_dev;

 if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH)
  return 0;

 cmd->se_cmd_flags |= SCF_TASK_ATTR_SET;





 switch (cmd->sam_task_attr) {
 case 129:
  pr_debug("Added HEAD_OF_QUEUE for CDB: 0x%02x\n",
    cmd->t_task_cdb[0]);
  return 0;
 case 128:
  atomic_inc_mb(&dev->dev_ordered_sync);

  pr_debug("Added ORDERED for CDB: 0x%02x to ordered list\n",
    cmd->t_task_cdb[0]);





  if (!atomic_read(&dev->simple_cmds))
   return 0;
  break;
 default:



  atomic_inc_mb(&dev->simple_cmds);
  break;
 }

 if (atomic_read(&dev->dev_ordered_sync) == 0)
  return 0;

 spin_lock(&dev->delayed_cmd_lock);
 list_add_tail(&cmd->se_delayed_node, &dev->delayed_cmd_list);
 spin_unlock(&dev->delayed_cmd_lock);

 pr_debug("Added CDB: 0x%02x Task Attr: 0x%02x to delayed CMD listn",
  cmd->t_task_cdb[0], cmd->sam_task_attr);
 return 1;
}
