
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int hwremoved; scalar_t__ state; int netdev; } ;


 scalar_t__ WLAN_DEVICE_OPEN ;
 int netif_device_detach (int ) ;
 int netif_stop_queue (int ) ;

void p80211netdev_hwremoved(struct wlandevice *wlandev)
{
 wlandev->hwremoved = 1;
 if (wlandev->state == WLAN_DEVICE_OPEN)
  netif_stop_queue(wlandev->netdev);

 netif_device_detach(wlandev->netdev);
}
