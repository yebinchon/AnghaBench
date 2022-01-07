
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_wmac {int dummy; } ;
struct TYPE_2__ {scalar_t__ iftype; int wiphy; } ;
struct qtnf_vif {TYPE_1__ wdev; } ;
struct net_device {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int qtnf_disconnect (int ,struct net_device*,int ) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 int qtnf_scan_done (struct qtnf_wmac*,int) ;
 struct qtnf_wmac* wiphy_priv (int ) ;

void qtnf_virtual_intf_cleanup(struct net_device *ndev)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
 struct qtnf_wmac *mac = wiphy_priv(vif->wdev.wiphy);

 if (vif->wdev.iftype == NL80211_IFTYPE_STATION)
  qtnf_disconnect(vif->wdev.wiphy, ndev,
    WLAN_REASON_DEAUTH_LEAVING);

 qtnf_scan_done(mac, 1);
}
