
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int generation; scalar_t__ filled; } ;
struct TYPE_2__ {int iftype; int current_bss; } ;
struct qtnf_vif {int generation; int netdev; TYPE_1__ wdev; int sta_list; int bssid; } ;
struct qtnf_sta_node {int mac_addr; } ;
struct net_device {int dummy; } ;


 int ENOENT ;
 int ENOTSUPP ;
 int GFP_KERNEL ;


 int cfg80211_del_sta (int ,int *,int ) ;
 int ether_addr_copy (int *,int ) ;
 int qtnf_cmd_get_sta_info (struct qtnf_vif*,int *,struct station_info*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 struct qtnf_sta_node* qtnf_sta_list_lookup_index (int *,int) ;
 int unlikely (int) ;

__attribute__((used)) static int
qtnf_dump_station(struct wiphy *wiphy, struct net_device *dev,
    int idx, u8 *mac, struct station_info *sinfo)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);
 const struct qtnf_sta_node *sta_node;
 int ret;

 switch (vif->wdev.iftype) {
 case 128:
  if (idx != 0 || !vif->wdev.current_bss)
   return -ENOENT;

  ether_addr_copy(mac, vif->bssid);
  break;
 case 129:
  sta_node = qtnf_sta_list_lookup_index(&vif->sta_list, idx);
  if (unlikely(!sta_node))
   return -ENOENT;

  ether_addr_copy(mac, sta_node->mac_addr);
  break;
 default:
  return -ENOTSUPP;
 }

 ret = qtnf_cmd_get_sta_info(vif, mac, sinfo);

 if (vif->wdev.iftype == 129) {
  if (ret == -ENOENT) {
   cfg80211_del_sta(vif->netdev, mac, GFP_KERNEL);
   sinfo->filled = 0;
  }
 }

 sinfo->generation = vif->generation;

 return ret;
}
