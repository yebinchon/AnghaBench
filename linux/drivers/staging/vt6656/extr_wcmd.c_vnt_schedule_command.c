
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {scalar_t__ free_cmd_queue; int* cmd_queue; size_t cmd_enqueue_idx; int cmd_running; } ;
typedef enum vnt_cmd { ____Placeholder_vnt_cmd } vnt_cmd ;


 int ADD_ONE_WITH_WRAP_AROUND (size_t,int ) ;
 int CMD_Q_SIZE ;
 int vnt_cmd_complete (struct vnt_private*) ;

int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd command)
{
 if (priv->free_cmd_queue == 0)
  return 0;

 priv->cmd_queue[priv->cmd_enqueue_idx] = command;

 ADD_ONE_WITH_WRAP_AROUND(priv->cmd_enqueue_idx, CMD_Q_SIZE);
 priv->free_cmd_queue--;

 if (!priv->cmd_running)
  vnt_cmd_complete(priv);

 return 1;
}
