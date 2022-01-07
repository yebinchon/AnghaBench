
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_2__ {int pmkid_list; } ;
struct wilc_vif {TYPE_1__ priv; } ;
struct wilc_pmkid_attr {int dummy; } ;
struct net_device {int dummy; } ;


 int memset (int *,int ,int) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int flush_pmksa(struct wiphy *wiphy, struct net_device *netdev)
{
 struct wilc_vif *vif = netdev_priv(netdev);

 memset(&vif->priv.pmkid_list, 0, sizeof(struct wilc_pmkid_attr));

 return 0;
}
