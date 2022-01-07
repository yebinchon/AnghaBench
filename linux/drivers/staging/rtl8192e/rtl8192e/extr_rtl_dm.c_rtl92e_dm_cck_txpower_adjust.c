
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ IC_Cut; } ;
struct net_device {int dummy; } ;


 scalar_t__ IC_VersionCut_D ;
 int _rtl92e_dm_cck_tx_power_adjust_thermal_meter (struct net_device*,int) ;
 int _rtl92e_dm_cck_tx_power_adjust_tssi (struct net_device*,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_dm_cck_txpower_adjust(struct net_device *dev, bool binch14)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->IC_Cut >= IC_VersionCut_D)
  _rtl92e_dm_cck_tx_power_adjust_tssi(dev, binch14);
 else
  _rtl92e_dm_cck_tx_power_adjust_thermal_meter(dev, binch14);
}
