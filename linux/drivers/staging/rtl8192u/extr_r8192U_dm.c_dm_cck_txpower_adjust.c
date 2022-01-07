
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ bDcut; } ;
struct net_device {int dummy; } ;


 int dm_CCKTxPowerAdjust_TSSI (struct net_device*,int) ;
 int dm_CCKTxPowerAdjust_ThermalMeter (struct net_device*,int) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

void dm_cck_txpower_adjust(struct net_device *dev, bool binch14)
{
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->bDcut)
  dm_CCKTxPowerAdjust_TSSI(dev, binch14);
 else
  dm_CCKTxPowerAdjust_ThermalMeter(dev, binch14);
}
