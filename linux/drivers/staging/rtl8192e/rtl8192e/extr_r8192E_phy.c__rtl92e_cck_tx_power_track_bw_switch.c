
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {scalar_t__ IC_Cut; } ;
struct net_device {int dummy; } ;


 scalar_t__ IC_VersionCut_D ;
 int _rtl92e_cck_tx_power_track_bw_switch_thermal (struct net_device*) ;
 int _rtl92e_cck_tx_power_track_bw_switch_tssi (struct net_device*) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_cck_tx_power_track_bw_switch(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 if (priv->IC_Cut >= IC_VersionCut_D)
  _rtl92e_cck_tx_power_track_bw_switch_tssi(dev);
 else
  _rtl92e_cck_tx_power_track_bw_switch_thermal(dev);
}
