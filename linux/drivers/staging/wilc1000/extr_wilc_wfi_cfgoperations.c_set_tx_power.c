
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct wilc_vif {int ndev; } ;
typedef int s32 ;
typedef enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;


 int MBM_TO_DBM (int) ;
 int netdev_err (int ,char*) ;
 struct wilc_vif* netdev_priv (int ) ;
 int wilc_set_tx_power (struct wilc_vif*,int) ;

__attribute__((used)) static int set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
   enum nl80211_tx_power_setting type, int mbm)
{
 int ret;
 s32 tx_power = MBM_TO_DBM(mbm);
 struct wilc_vif *vif = netdev_priv(wdev->netdev);

 if (tx_power < 0)
  tx_power = 0;
 else if (tx_power > 18)
  tx_power = 18;
 ret = wilc_set_tx_power(vif, tx_power);
 if (ret)
  netdev_err(vif->ndev, "Failed to set tx power\n");

 return ret;
}
