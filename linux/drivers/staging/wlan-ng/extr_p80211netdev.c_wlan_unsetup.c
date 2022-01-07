
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int * netdev; int rx_bh; } ;
struct wireless_dev {scalar_t__ wiphy; } ;


 int free_netdev (int *) ;
 struct wireless_dev* netdev_priv (int *) ;
 int tasklet_kill (int *) ;
 int wlan_free_wiphy (scalar_t__) ;

void wlan_unsetup(struct wlandevice *wlandev)
{
 struct wireless_dev *wdev;

 tasklet_kill(&wlandev->rx_bh);

 if (wlandev->netdev) {
  wdev = netdev_priv(wlandev->netdev);
  if (wdev->wiphy)
   wlan_free_wiphy(wdev->wiphy);
  free_netdev(wlandev->netdev);
  wlandev->netdev = ((void*)0);
 }
}
