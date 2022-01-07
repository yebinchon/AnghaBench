
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct vif_params {int use_4addr; int * macaddr; } ;
struct TYPE_3__ {int iftype; } ;
struct qtnf_vif {TYPE_1__ wdev; int vifid; TYPE_2__* mac; } ;
struct net_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_4__ {int macid; } ;


 int pr_err (char*,int ,int ,int) ;
 int qtnf_cmd_send_change_intf_type (struct qtnf_vif*,int,int,int *) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 int qtnf_scan_done (TYPE_2__*,int) ;
 int qtnf_validate_iface_combinations (struct wiphy*,struct qtnf_vif*,int) ;

__attribute__((used)) static int
qtnf_change_virtual_intf(struct wiphy *wiphy,
    struct net_device *dev,
    enum nl80211_iftype type,
    struct vif_params *params)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);
 u8 *mac_addr = ((void*)0);
 int use4addr = 0;
 int ret;

 ret = qtnf_validate_iface_combinations(wiphy, vif, type);
 if (ret) {
  pr_err("VIF%u.%u combination check: failed to set type %d\n",
         vif->mac->macid, vif->vifid, type);
  return ret;
 }

 if (params) {
  mac_addr = params->macaddr;
  use4addr = params->use_4addr;
 }

 qtnf_scan_done(vif->mac, 1);

 ret = qtnf_cmd_send_change_intf_type(vif, type, use4addr, mac_addr);
 if (ret) {
  pr_err("VIF%u.%u: failed to change type to %d\n",
         vif->mac->macid, vif->vifid, type);
  return ret;
 }

 vif->wdev.iftype = type;
 return 0;
}
