
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wilc_vif {int ndev; } ;
struct wilc {int vif_mutex; } ;


 scalar_t__ IS_ERR (struct wilc_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (int ,char*,int) ;
 struct wilc_vif* wilc_get_wl_to_vif (struct wilc*) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void wilc_set_wakeup(struct wiphy *wiphy, bool enabled)
{
 struct wilc *wl = wiphy_priv(wiphy);
 struct wilc_vif *vif;

 mutex_lock(&wl->vif_mutex);
 vif = wilc_get_wl_to_vif(wl);
 if (IS_ERR(vif)) {
  mutex_unlock(&wl->vif_mutex);
  return;
 }

 netdev_info(vif->ndev, "cfg set wake up = %d\n", enabled);
 mutex_unlock(&wl->vif_mutex);
}
