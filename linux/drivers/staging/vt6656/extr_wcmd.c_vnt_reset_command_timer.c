
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int cmd_running; int command_state; scalar_t__ cmd_enqueue_idx; scalar_t__ cmd_dequeue_idx; int free_cmd_queue; } ;


 int CMD_Q_SIZE ;
 int WLAN_CMD_IDLE ;

void vnt_reset_command_timer(struct vnt_private *priv)
{
 priv->free_cmd_queue = CMD_Q_SIZE;
 priv->cmd_dequeue_idx = 0;
 priv->cmd_enqueue_idx = 0;
 priv->command_state = WLAN_CMD_IDLE;
 priv->cmd_running = 0;
}
