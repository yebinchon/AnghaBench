
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wiphy {int dummy; } ;
struct qtnf_wmac {int macid; } ;
struct TYPE_2__ {scalar_t__ iftype; scalar_t__ current_bss; } ;
struct qtnf_vif {int netdev; TYPE_1__ wdev; int vifid; } ;
struct net_device {int dummy; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;
 int netif_carrier_off (int ) ;
 int pr_err (char*,int ,...) ;
 int qtnf_cmd_send_disconnect (struct qtnf_vif*,int ) ;
 struct qtnf_vif* qtnf_mac_get_base_vif (struct qtnf_wmac*) ;
 struct qtnf_wmac* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int
qtnf_disconnect(struct wiphy *wiphy, struct net_device *dev,
  u16 reason_code)
{
 struct qtnf_wmac *mac = wiphy_priv(wiphy);
 struct qtnf_vif *vif;
 int ret = 0;

 vif = qtnf_mac_get_base_vif(mac);
 if (!vif) {
  pr_err("MAC%u: primary VIF is not configured\n", mac->macid);
  return -EFAULT;
 }

 if (vif->wdev.iftype != NL80211_IFTYPE_STATION) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 ret = qtnf_cmd_send_disconnect(vif, reason_code);
 if (ret)
  pr_err("VIF%u.%u: failed to disconnect\n",
         mac->macid, vif->vifid);

 if (vif->wdev.current_bss) {
  netif_carrier_off(vif->netdev);
  cfg80211_disconnected(vif->netdev, reason_code,
          ((void*)0), 0, 1, GFP_KERNEL);
 }

out:
 return ret;
}
