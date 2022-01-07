
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int mode; int bssid; } ;
struct net_device {int dummy; } ;


 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int *) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;

void wilc_wlan_set_bssid(struct net_device *wilc_netdev, u8 *bssid, u8 mode)
{
 struct wilc_vif *vif = netdev_priv(wilc_netdev);

 if (bssid)
  ether_addr_copy(vif->bssid, bssid);
 else
  eth_zero_addr(vif->bssid);

 vif->mode = mode;
}
