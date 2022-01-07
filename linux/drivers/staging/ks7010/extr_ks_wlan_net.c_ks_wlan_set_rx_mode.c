
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ dev_state; } ;


 scalar_t__ DEVICE_STATE_READY ;
 int SME_MULTICAST_REQUEST ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static
void ks_wlan_set_rx_mode(struct net_device *dev)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->dev_state < DEVICE_STATE_READY)
  return;
 hostif_sme_enqueue(priv, SME_MULTICAST_REQUEST);
}
