
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_beacon_data {int dummy; } ;


 int qtnf_mgmt_set_appie (struct qtnf_vif*,struct cfg80211_beacon_data*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int qtnf_change_beacon(struct wiphy *wiphy, struct net_device *dev,
         struct cfg80211_beacon_data *info)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);

 return qtnf_mgmt_set_appie(vif, info);
}
