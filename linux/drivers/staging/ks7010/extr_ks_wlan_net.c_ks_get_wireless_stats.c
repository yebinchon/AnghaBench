
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ beacon; } ;
struct TYPE_3__ {scalar_t__ misc; scalar_t__ retries; scalar_t__ fragment; scalar_t__ code; scalar_t__ nwid; } ;
struct iw_statistics {TYPE_2__ miss; TYPE_1__ discard; } ;
struct ks_wlan_private {scalar_t__ dev_state; struct iw_statistics wstats; } ;


 scalar_t__ DEVICE_STATE_READY ;
 int atomic_read (int *) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int update_phyinfo ;

__attribute__((used)) static struct iw_statistics *ks_get_wireless_stats(struct net_device *dev)
{
 struct ks_wlan_private *priv = netdev_priv(dev);
 struct iw_statistics *wstats = &priv->wstats;

 if (!atomic_read(&update_phyinfo))
  return (priv->dev_state < DEVICE_STATE_READY) ? ((void*)0) : wstats;





 wstats->discard.nwid = 0;
 wstats->discard.code = 0;
 wstats->discard.fragment = 0;
 wstats->discard.retries = 0;
 wstats->discard.misc = 0;
 wstats->miss.beacon = 0;

 return wstats;
}
