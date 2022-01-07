
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wilc_vif {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_beacon_data {int dummy; } ;


 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_add_beacon (struct wilc_vif*,int ,int ,struct cfg80211_beacon_data*) ;

__attribute__((used)) static int change_beacon(struct wiphy *wiphy, struct net_device *dev,
    struct cfg80211_beacon_data *beacon)
{
 struct wilc_vif *vif = netdev_priv(dev);

 return wilc_add_beacon(vif, 0, 0, beacon);
}
