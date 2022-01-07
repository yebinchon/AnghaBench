
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int rf_chip; } ;
struct net_device {int dummy; } ;


 int COMP_ERR ;

 int RT_TRACE (int ,char*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int phy_rf8256_config (struct net_device*) ;

void rtl8192_phy_RFConfig(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 switch (priv->rf_chip) {
 case 128:
  phy_rf8256_config(dev);
  break;
 default:
  RT_TRACE(COMP_ERR, "error chip id\n");
  break;
 }
}
