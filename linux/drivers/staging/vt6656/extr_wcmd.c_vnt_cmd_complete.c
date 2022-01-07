
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {scalar_t__ free_cmd_queue; int cmd_running; int command; int* cmd_queue; size_t cmd_dequeue_idx; int command_state; } ;


 int ADD_ONE_WITH_WRAP_AROUND (size_t,scalar_t__) ;
 scalar_t__ CMD_Q_SIZE ;

 int WLAN_CMD_BECON_SEND_START ;

 int WLAN_CMD_CHANGE_ANTENNA_START ;
 int WLAN_CMD_IDLE ;

 int WLAN_CMD_INIT_MAC80211_START ;

 int WLAN_CMD_SETPOWER_START ;

 int WLAN_CMD_TBTT_WAKEUP_START ;
 int vnt_cmd_timer_wait (struct vnt_private*,int ) ;

__attribute__((used)) static int vnt_cmd_complete(struct vnt_private *priv)
{
 priv->command_state = WLAN_CMD_IDLE;
 if (priv->free_cmd_queue == CMD_Q_SIZE) {

  priv->cmd_running = 0;
  return 1;
 }

 priv->command = priv->cmd_queue[priv->cmd_dequeue_idx];

 ADD_ONE_WITH_WRAP_AROUND(priv->cmd_dequeue_idx, CMD_Q_SIZE);
 priv->free_cmd_queue++;
 priv->cmd_running = 1;

 switch (priv->command) {
 case 130:
  priv->command_state = WLAN_CMD_INIT_MAC80211_START;
  break;

 case 128:
  priv->command_state = WLAN_CMD_TBTT_WAKEUP_START;
  break;

 case 132:
  priv->command_state = WLAN_CMD_BECON_SEND_START;
  break;

 case 129:
  priv->command_state = WLAN_CMD_SETPOWER_START;
  break;

 case 131:
  priv->command_state = WLAN_CMD_CHANGE_ANTENNA_START;
  break;

 default:
  break;
 }

 vnt_cmd_timer_wait(priv, 0);

 return 1;
}
