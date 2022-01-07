
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {int * sta_associated_bss; } ;
struct wilc_priv {TYPE_1__ assoc_stainfo; } ;
struct wilc_vif {scalar_t__ iftype; struct wilc_priv priv; } ;
struct station_parameters {size_t aid; } ;
struct net_device {int dummy; } ;


 int ETH_ALEN ;
 scalar_t__ WILC_AP_MODE ;
 scalar_t__ WILC_GO_MODE ;
 int memcpy (int ,int const*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_add_station (struct wilc_vif*,int const*,struct station_parameters*) ;

__attribute__((used)) static int add_station(struct wiphy *wiphy, struct net_device *dev,
         const u8 *mac, struct station_parameters *params)
{
 int ret = 0;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc_priv *priv = &vif->priv;

 if (vif->iftype == WILC_AP_MODE || vif->iftype == WILC_GO_MODE) {
  memcpy(priv->assoc_stainfo.sta_associated_bss[params->aid], mac,
         ETH_ALEN);

  ret = wilc_add_station(vif, mac, params);
  if (ret)
   netdev_err(dev, "Host add station fail\n");
 }

 return ret;
}
