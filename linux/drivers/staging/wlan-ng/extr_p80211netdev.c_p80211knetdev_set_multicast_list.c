
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int (* set_multicast_list ) (struct wlandevice*,struct net_device*) ;} ;
struct net_device {struct wlandevice* ml_priv; } ;


 int stub1 (struct wlandevice*,struct net_device*) ;

__attribute__((used)) static void p80211knetdev_set_multicast_list(struct net_device *dev)
{
 struct wlandevice *wlandev = dev->ml_priv;



 if (wlandev->set_multicast_list)
  wlandev->set_multicast_list(wlandev, dev);
}
