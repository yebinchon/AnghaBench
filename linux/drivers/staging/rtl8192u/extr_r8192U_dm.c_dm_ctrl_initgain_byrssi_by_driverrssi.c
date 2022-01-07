
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {int undecorated_smoothed_pwdb; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int cur_connect_state; int pre_connect_state; scalar_t__ dig_algorithm_switch; int rssi_val; int dig_state; int dig_enable_flag; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int DIG_CONNECT ;
 int DIG_DISCONNECT ;
 int DM_STA_DIG_OFF ;
 scalar_t__ IEEE80211_LINKED ;
 int UFWP ;
 int bMaskByte1 ;
 int dm_cs_ratio (struct net_device*) ;
 TYPE_2__ dm_digtable ;
 int dm_initial_gain (struct net_device*) ;
 int dm_pd_th (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_setBBreg (struct net_device*,int ,int ,int) ;

__attribute__((used)) static void dm_ctrl_initgain_byrssi_by_driverrssi(
 struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 i;
 static u8 fw_dig;

 if (!dm_digtable.dig_enable_flag)
  return;


 if (dm_digtable.dig_algorithm_switch)
  fw_dig = 0;

 if (fw_dig <= 3) {

  for (i = 0; i < 3; i++)
   rtl8192_setBBreg(dev, UFWP, bMaskByte1, 0x8);
  fw_dig++;
  dm_digtable.dig_state = DM_STA_DIG_OFF;
 }

 if (priv->ieee80211->state == IEEE80211_LINKED)
  dm_digtable.cur_connect_state = DIG_CONNECT;
 else
  dm_digtable.cur_connect_state = DIG_DISCONNECT;




 dm_digtable.rssi_val = priv->undecorated_smoothed_pwdb;

 dm_initial_gain(dev);
 dm_pd_th(dev);
 dm_cs_ratio(dev);
 if (dm_digtable.dig_algorithm_switch)
  dm_digtable.dig_algorithm_switch = 0;
 dm_digtable.pre_connect_state = dm_digtable.cur_connect_state;

}
