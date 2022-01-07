
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {int associated_bss; } ;
struct wilc_vif {TYPE_1__ priv; } ;
struct station_info {int signal; int filled; } ;
struct net_device {int dummy; } ;


 int BIT_ULL (int ) ;
 int ENOENT ;
 int ETH_ALEN ;
 int NL80211_STA_INFO_SIGNAL ;
 int memcpy (int *,int ,int ) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_get_rssi (struct wilc_vif*,int *) ;

__attribute__((used)) static int dump_station(struct wiphy *wiphy, struct net_device *dev,
   int idx, u8 *mac, struct station_info *sinfo)
{
 struct wilc_vif *vif = netdev_priv(dev);
 int ret;

 if (idx != 0)
  return -ENOENT;

 sinfo->filled |= BIT_ULL(NL80211_STA_INFO_SIGNAL);

 ret = wilc_get_rssi(vif, &sinfo->signal);
 if (ret)
  return ret;

 memcpy(mac, vif->priv.associated_bss, ETH_ALEN);
 return 0;
}
