
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int netdev; } ;


 int register_netdev (int ) ;

int register_wlandev(struct wlandevice *wlandev)
{
 return register_netdev(wlandev->netdev);
}
