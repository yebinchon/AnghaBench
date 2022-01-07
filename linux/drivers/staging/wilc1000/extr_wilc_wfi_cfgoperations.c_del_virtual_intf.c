
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ iftype; int netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_vif {int idx; int iftype; scalar_t__ monitor_flag; int ndev; } ;
struct wilc {int vif_num; int vif_mutex; struct wilc_vif** vif; } ;


 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int cfg80211_stop_iface (struct wiphy*,struct wireless_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wilc_vif* netdev_priv (int ) ;
 int unregister_netdevice (int ) ;
 int wilc_get_vif_idx (struct wilc_vif*) ;
 int wilc_set_operation_mode (struct wilc_vif*,int ,int ,int) ;
 int wilc_wfi_deinit_mon_interface (struct wilc*,int) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int del_virtual_intf(struct wiphy *wiphy, struct wireless_dev *wdev)
{
 struct wilc *wl = wiphy_priv(wiphy);
 struct wilc_vif *vif;
 int i;

 if (wdev->iftype == NL80211_IFTYPE_AP ||
     wdev->iftype == NL80211_IFTYPE_P2P_GO)
  wilc_wfi_deinit_mon_interface(wl, 1);
 vif = netdev_priv(wdev->netdev);
 cfg80211_stop_iface(wiphy, wdev, GFP_KERNEL);
 unregister_netdevice(vif->ndev);
 vif->monitor_flag = 0;

 mutex_lock(&wl->vif_mutex);
 wilc_set_operation_mode(vif, 0, 0, 0);
 for (i = vif->idx; i < wl->vif_num; i++) {
  if ((i + 1) >= wl->vif_num) {
   wl->vif[i] = ((void*)0);
  } else {
   vif = wl->vif[i + 1];
   vif->idx = i;
   wl->vif[i] = vif;
   wilc_set_operation_mode(vif, wilc_get_vif_idx(vif),
      vif->iftype, vif->idx);
  }
 }
 wl->vif_num--;
 mutex_unlock(&wl->vif_mutex);

 return 0;
}
