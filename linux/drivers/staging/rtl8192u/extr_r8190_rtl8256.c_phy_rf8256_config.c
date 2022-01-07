
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int NumTotalRFPath; } ;
struct net_device {int dummy; } ;


 int RTL819X_TOTAL_RF_PATH ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_rf8256_config_para_file (struct net_device*) ;

void phy_rf8256_config(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);




 priv->NumTotalRFPath = RTL819X_TOTAL_RF_PATH;

 phy_rf8256_config_para_file(dev);
}
