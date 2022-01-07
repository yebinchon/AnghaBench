
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct wilc_vif {scalar_t__ iftype; } ;
struct station_parameters {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ WILC_AP_MODE ;
 scalar_t__ WILC_GO_MODE ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_edit_station (struct wilc_vif*,int const*,struct station_parameters*) ;

__attribute__((used)) static int change_station(struct wiphy *wiphy, struct net_device *dev,
     const u8 *mac, struct station_parameters *params)
{
 int ret = 0;
 struct wilc_vif *vif = netdev_priv(dev);

 if (vif->iftype == WILC_AP_MODE || vif->iftype == WILC_GO_MODE) {
  ret = wilc_edit_station(vif, mac, params);
  if (ret)
   netdev_err(dev, "Host edit station fail\n");
 }
 return ret;
}
