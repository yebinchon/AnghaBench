
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wilc_vif {int dummy; } ;
struct net_device {int dev_addr; } ;
struct cfg80211_ap_settings {int beacon; int dtim_period; int beacon_interval; int chandef; } ;


 int WILC_AP_MODE ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int set_channel (struct wiphy*,int *) ;
 int wilc_add_beacon (struct wilc_vif*,int ,int ,int *) ;
 int wilc_wlan_set_bssid (struct net_device*,int ,int ) ;

__attribute__((used)) static int start_ap(struct wiphy *wiphy, struct net_device *dev,
      struct cfg80211_ap_settings *settings)
{
 struct wilc_vif *vif = netdev_priv(dev);
 int ret;

 ret = set_channel(wiphy, &settings->chandef);
 if (ret != 0)
  netdev_err(dev, "Error in setting channel\n");

 wilc_wlan_set_bssid(dev, dev->dev_addr, WILC_AP_MODE);

 return wilc_add_beacon(vif, settings->beacon_interval,
       settings->dtim_period, &settings->beacon);
}
