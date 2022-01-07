
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct ks_wlan_private {unsigned int connect_status; scalar_t__ dev_state; scalar_t__ scan_ind_count; struct net_device* net_dev; } ;


 int ARPHRD_ETHER ;
 scalar_t__ DEVICE_STATE_READY ;
 scalar_t__ DEVICE_STATE_SLEEP ;
 unsigned int DISCONNECT_STATUS ;
 unsigned int FORCE_DISCONNECT ;
 int SIOCGIWAP ;
 int SME_STOP_CONFIRM ;
 int eth_zero_addr (int ) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 scalar_t__ is_connect_status (unsigned int) ;
 scalar_t__ is_disconnect_status (unsigned int) ;
 int netdev_info (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static
void hostif_stop_confirm(struct ks_wlan_private *priv)
{
 unsigned int tmp = 0;
 unsigned int old_status = priv->connect_status;
 struct net_device *netdev = priv->net_dev;
 union iwreq_data wrqu0;

 if (priv->dev_state == DEVICE_STATE_SLEEP)
  priv->dev_state = DEVICE_STATE_READY;


 if (is_connect_status(priv->connect_status)) {
  netif_carrier_off(netdev);
  tmp = FORCE_DISCONNECT & priv->connect_status;
  priv->connect_status = tmp | DISCONNECT_STATUS;
  netdev_info(netdev, "IWEVENT: disconnect\n");

  wrqu0.data.length = 0;
  wrqu0.data.flags = 0;
  wrqu0.ap_addr.sa_family = ARPHRD_ETHER;
  if (is_disconnect_status(priv->connect_status) &&
      is_connect_status(old_status)) {
   eth_zero_addr(wrqu0.ap_addr.sa_data);
   netdev_info(netdev, "IWEVENT: disconnect\n");
   wireless_send_event(netdev, SIOCGIWAP, &wrqu0, ((void*)0));
  }
  priv->scan_ind_count = 0;
 }

 hostif_sme_enqueue(priv, SME_STOP_CONFIRM);
}
