
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int netdev; } ;


 int netif_wake_queue (int ) ;

void prism2sta_ev_alloc(struct wlandevice *wlandev)
{
 netif_wake_queue(wlandev->netdev);
}
