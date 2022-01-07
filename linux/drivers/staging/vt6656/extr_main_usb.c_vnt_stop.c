
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int cmd_running; int interrupt_urb; int run_command_work; int flags; scalar_t__ key_entry_inuse; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;


 int DEVICE_FLAGS_DISCONNECTED ;
 int DEVICE_FLAGS_UNPLUG ;
 int MAX_KEY_TABLE ;
 int cancel_delayed_work_sync (int *) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;
 int vnt_free_int_bufs (struct vnt_private*) ;
 int vnt_free_rx_bufs (struct vnt_private*) ;
 int vnt_free_tx_bufs (struct vnt_private*) ;
 int vnt_mac_disable_keyentry (struct vnt_private*,int) ;
 int vnt_mac_shutdown (struct vnt_private*) ;

__attribute__((used)) static void vnt_stop(struct ieee80211_hw *hw)
{
 struct vnt_private *priv = hw->priv;
 int i;

 if (!priv)
  return;

 for (i = 0; i < MAX_KEY_TABLE; i++)
  vnt_mac_disable_keyentry(priv, i);


 priv->key_entry_inuse = 0;

 if (!test_bit(DEVICE_FLAGS_UNPLUG, &priv->flags))
  vnt_mac_shutdown(priv);

 ieee80211_stop_queues(hw);

 set_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags);

 cancel_delayed_work_sync(&priv->run_command_work);

 priv->cmd_running = 0;

 vnt_free_tx_bufs(priv);
 vnt_free_rx_bufs(priv);
 vnt_free_int_bufs(priv);

 usb_kill_urb(priv->interrupt_urb);
 usb_free_urb(priv->interrupt_urb);
}
