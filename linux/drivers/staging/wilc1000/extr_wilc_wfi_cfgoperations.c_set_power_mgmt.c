
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wilc_priv {int hif_drv; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct net_device {int dummy; } ;


 int EIO ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_set_power_mgmt (struct wilc_vif*,int,int) ;

__attribute__((used)) static int set_power_mgmt(struct wiphy *wiphy, struct net_device *dev,
     bool enabled, int timeout)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc_priv *priv = &vif->priv;

 if (!priv->hif_drv)
  return -EIO;

 wilc_set_power_mgmt(vif, enabled, timeout);

 return 0;
}
