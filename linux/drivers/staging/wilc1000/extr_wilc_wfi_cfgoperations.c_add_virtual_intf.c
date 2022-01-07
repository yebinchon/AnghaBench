
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {struct wireless_dev wdev; } ;
struct wilc_vif {int monitor_flag; TYPE_1__ priv; int ndev; } ;
struct wilc {scalar_t__ vif_num; int vif_mutex; struct wilc_vif** vif; } ;
struct vif_params {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct wireless_dev* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct wilc_vif*) ;

 int NL80211_IFTYPE_MONITOR ;

 int PTR_ERR (struct wilc_vif*) ;
 int WILC_AP_MODE ;
 int WILC_GO_MODE ;
 scalar_t__ WILC_NUM_CONCURRENT_IFC ;
 int WILC_STATION_MODE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int wilc_get_vif_from_type (struct wilc*,int) ;
 struct wilc_vif* wilc_netdev_ifc_init (struct wilc*,char const*,int,int,int) ;
 struct net_device* wilc_wfi_init_mon_interface (struct wilc*,char const*,int ) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static struct wireless_dev *add_virtual_intf(struct wiphy *wiphy,
          const char *name,
          unsigned char name_assign_type,
          enum nl80211_iftype type,
          struct vif_params *params)
{
 struct wilc *wl = wiphy_priv(wiphy);
 struct wilc_vif *vif;
 struct wireless_dev *wdev;
 int iftype;
 int ret;

 if (type == NL80211_IFTYPE_MONITOR) {
  struct net_device *ndev;
  int ap_index = wilc_get_vif_from_type(wl, WILC_AP_MODE);

  if (ap_index < 0) {
   ap_index = wilc_get_vif_from_type(wl, WILC_GO_MODE);
   if (ap_index < 0)
    goto validate_interface;
  }

  vif = wl->vif[ap_index];
  if (vif->monitor_flag)
   goto validate_interface;

  ndev = wilc_wfi_init_mon_interface(wl, name, vif->ndev);
  if (ndev)
   vif->monitor_flag = 1;
  else
   return ERR_PTR(-EINVAL);

  wdev = &vif->priv.wdev;
  return wdev;
 }

validate_interface:
 mutex_lock(&wl->vif_mutex);
 if (wl->vif_num == WILC_NUM_CONCURRENT_IFC) {
  pr_err("Reached maximum number of interface\n");
  ret = -EINVAL;
  goto out_err;
 }

 switch (type) {
 case 128:
  iftype = WILC_STATION_MODE;
  break;
 case 129:
  iftype = WILC_AP_MODE;
  break;
 default:
  ret = -EOPNOTSUPP;
  goto out_err;
 }

 vif = wilc_netdev_ifc_init(wl, name, iftype, type, 1);
 if (IS_ERR(vif)) {
  ret = PTR_ERR(vif);
  goto out_err;
 }

 mutex_unlock(&wl->vif_mutex);

 return &vif->priv.wdev;

out_err:
 mutex_unlock(&wl->vif_mutex);
 return ERR_PTR(ret);
}
