
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_wfi_mon_priv {struct net_device* real_ndev; } ;
struct wilc {struct net_device* monitor_dev; } ;
struct net_device {int needs_free_netdev; int * netdev_ops; scalar_t__* name; int type; } ;


 int ARPHRD_IEEE80211_RADIOTAP ;
 int IFNAMSIZ ;
 struct net_device* alloc_etherdev (int) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_wfi_mon_priv* netdev_priv (struct net_device*) ;
 scalar_t__ register_netdevice (struct net_device*) ;
 int strncpy (scalar_t__*,char const*,int) ;
 int wilc_wfi_netdev_ops ;

struct net_device *wilc_wfi_init_mon_interface(struct wilc *wl,
            const char *name,
            struct net_device *real_dev)
{
 struct wilc_wfi_mon_priv *priv;


 if (wl->monitor_dev)
  return wl->monitor_dev;

 wl->monitor_dev = alloc_etherdev(sizeof(struct wilc_wfi_mon_priv));
 if (!wl->monitor_dev)
  return ((void*)0);

 wl->monitor_dev->type = ARPHRD_IEEE80211_RADIOTAP;
 strncpy(wl->monitor_dev->name, name, IFNAMSIZ);
 wl->monitor_dev->name[IFNAMSIZ - 1] = 0;
 wl->monitor_dev->netdev_ops = &wilc_wfi_netdev_ops;
 wl->monitor_dev->needs_free_netdev = 1;

 if (register_netdevice(wl->monitor_dev)) {
  netdev_err(real_dev, "register_netdevice failed\n");
  return ((void*)0);
 }
 priv = netdev_priv(wl->monitor_dev);
 if (!priv)
  return ((void*)0);

 priv->real_ndev = real_dev;

 return wl->monitor_dev;
}
