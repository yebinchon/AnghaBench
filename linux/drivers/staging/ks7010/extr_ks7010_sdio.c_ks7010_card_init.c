
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {scalar_t__ version_size; scalar_t__ dev_state; int net_dev; int confirm_wait; scalar_t__ mac_address_valid; } ;


 scalar_t__ DEVICE_STATE_PREINIT ;
 scalar_t__ DEVICE_STATE_READY ;
 int HZ ;
 int SME_START ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int init_completion (int *) ;
 int ks7010_sme_enqueue_events (struct ks_wlan_private*) ;
 int netdev_dbg (int ,char*) ;
 int wait_for_completion_interruptible_timeout (int *,int) ;

__attribute__((used)) static void ks7010_card_init(struct ks_wlan_private *priv)
{
 init_completion(&priv->confirm_wait);


 hostif_sme_enqueue(priv, SME_START);

 if (!wait_for_completion_interruptible_timeout
     (&priv->confirm_wait, 5 * HZ)) {
  netdev_dbg(priv->net_dev, "wait time out!! SME_START\n");
 }

 if (priv->mac_address_valid && priv->version_size != 0)
  priv->dev_state = DEVICE_STATE_PREINIT;

 ks7010_sme_enqueue_events(priv);

 if (!wait_for_completion_interruptible_timeout
     (&priv->confirm_wait, 5 * HZ)) {
  netdev_dbg(priv->net_dev, "wait time out!! wireless parameter set\n");
 }

 if (priv->dev_state >= DEVICE_STATE_PREINIT) {
  netdev_dbg(priv->net_dev, "DEVICE READY!!\n");
  priv->dev_state = DEVICE_STATE_READY;
 }
}
