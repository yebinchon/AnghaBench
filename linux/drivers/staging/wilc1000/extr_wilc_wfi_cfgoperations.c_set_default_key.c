
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct wilc_vif {int dummy; } ;
struct net_device {int dummy; } ;


 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_set_wep_default_keyid (struct wilc_vif*,int ) ;

__attribute__((used)) static int set_default_key(struct wiphy *wiphy, struct net_device *netdev,
      u8 key_index, bool unicast, bool multicast)
{
 struct wilc_vif *vif = netdev_priv(netdev);

 wilc_set_wep_default_keyid(vif, key_index);

 return 0;
}
