
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wilc_vif {int dummy; } ;
struct net_device {int dummy; } ;


 int WILC_AP_MODE ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_del_beacon (struct wilc_vif*) ;
 int wilc_wlan_set_bssid (struct net_device*,int *,int ) ;

__attribute__((used)) static int stop_ap(struct wiphy *wiphy, struct net_device *dev)
{
 int ret;
 struct wilc_vif *vif = netdev_priv(dev);

 wilc_wlan_set_bssid(dev, ((void*)0), WILC_AP_MODE);

 ret = wilc_del_beacon(vif);

 if (ret)
  netdev_err(dev, "Host delete beacon fail\n");

 return ret;
}
