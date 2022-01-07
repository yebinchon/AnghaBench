
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int generation; } ;
struct qtnf_vif {int generation; } ;
struct net_device {int dummy; } ;


 int qtnf_cmd_get_sta_info (struct qtnf_vif*,int const*,struct station_info*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int
qtnf_get_station(struct wiphy *wiphy, struct net_device *dev,
   const u8 *mac, struct station_info *sinfo)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);

 sinfo->generation = vif->generation;
 return qtnf_cmd_get_sta_info(vif, mac, sinfo);
}
