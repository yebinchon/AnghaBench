
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int netdev; int nsdname; int (* tx_timeout ) (struct wlandevice*) ;} ;
struct net_device {struct wlandevice* ml_priv; } ;


 int netdev_warn (struct net_device*,char*,int ) ;
 int netif_wake_queue (int ) ;
 int stub1 (struct wlandevice*) ;

__attribute__((used)) static void p80211knetdev_tx_timeout(struct net_device *netdev)
{
 struct wlandevice *wlandev = netdev->ml_priv;

 if (wlandev->tx_timeout) {
  wlandev->tx_timeout(wlandev);
 } else {
  netdev_warn(netdev, "Implement tx_timeout for %s\n",
       wlandev->nsdname);
  netif_wake_queue(wlandev->netdev);
 }
}
