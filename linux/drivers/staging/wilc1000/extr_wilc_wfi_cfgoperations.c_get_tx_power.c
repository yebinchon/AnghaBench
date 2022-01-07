
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_vif {int ndev; struct wilc* wilc; } ;
struct wilc {int initialized; } ;


 int EIO ;
 int netdev_err (int ,char*) ;
 struct wilc_vif* netdev_priv (int ) ;
 int wilc_get_tx_power (struct wilc_vif*,int *) ;

__attribute__((used)) static int get_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
   int *dbm)
{
 int ret;
 struct wilc_vif *vif = netdev_priv(wdev->netdev);
 struct wilc *wl = vif->wilc;


 if (!wl->initialized)
  return -EIO;

 ret = wilc_get_tx_power(vif, (u8 *)dbm);
 if (ret)
  netdev_err(vif->ndev, "Failed to get tx power\n");

 return ret;
}
