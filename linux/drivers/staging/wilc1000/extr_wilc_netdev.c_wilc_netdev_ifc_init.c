
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iftype; struct net_device* netdev; int wiphy; } ;
struct TYPE_4__ {struct net_device* dev; TYPE_1__ wdev; } ;
struct wilc_vif {int iftype; size_t idx; scalar_t__ mac_opened; struct wilc* wilc; TYPE_2__ priv; struct net_device* ndev; } ;
struct wilc {size_t vif_num; struct wilc_vif** vif; int wiphy; } ;
struct net_device {int needs_free_netdev; int * netdev_ops; struct wilc_vif* ml_priv; int name; TYPE_1__* ieee80211_ptr; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EFAULT ;
 int ENOMEM ;
 struct wilc_vif* ERR_PTR (int ) ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_etherdev (int) ;
 int free_netdev (struct net_device*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 int strcpy (int ,char const*) ;
 int wilc_netdev_ops ;
 int wiphy_dev (int ) ;

struct wilc_vif *wilc_netdev_ifc_init(struct wilc *wl, const char *name,
          int vif_type, enum nl80211_iftype type,
          bool rtnl_locked)
{
 struct net_device *ndev;
 struct wilc_vif *vif;
 int ret;

 ndev = alloc_etherdev(sizeof(*vif));
 if (!ndev)
  return ERR_PTR(-ENOMEM);

 vif = netdev_priv(ndev);
 ndev->ieee80211_ptr = &vif->priv.wdev;
 strcpy(ndev->name, name);
 vif->wilc = wl;
 vif->ndev = ndev;
 ndev->ml_priv = vif;

 ndev->netdev_ops = &wilc_netdev_ops;

 SET_NETDEV_DEV(ndev, wiphy_dev(wl->wiphy));

 vif->priv.wdev.wiphy = wl->wiphy;
 vif->priv.wdev.netdev = ndev;
 vif->priv.wdev.iftype = type;
 vif->priv.dev = ndev;

 if (rtnl_locked)
  ret = register_netdevice(ndev);
 else
  ret = register_netdev(ndev);

 if (ret) {
  free_netdev(ndev);
  return ERR_PTR(-EFAULT);
 }

 ndev->needs_free_netdev = 1;
 vif->iftype = vif_type;
 vif->wilc->vif[wl->vif_num] = vif;
 vif->idx = wl->vif_num;
 wl->vif_num += 1;
 vif->mac_opened = 0;
 return vif;
}
