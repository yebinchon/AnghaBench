
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct r8192_priv {int undecorated_smoothed_pwdb; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int dig_enable_flag; int CurSTAConnectState; int PreSTAConnectState; scalar_t__ dig_algorithm_switch; int rssi_val; int dig_state; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int DIG_STA_CONNECT ;
 int DIG_STA_DISCONNECT ;
 int DM_STA_DIG_OFF ;
 scalar_t__ RTLLIB_LINKED ;
 int UFWP ;
 int _rtl92e_dm_cs_ratio (struct net_device*) ;
 int _rtl92e_dm_initial_gain (struct net_device*) ;
 int _rtl92e_dm_pd_th (struct net_device*) ;
 int bMaskByte1 ;
 TYPE_2__ dm_digtable ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_ctrl_initgain_byrssi_driver(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u8 i;
 static u8 fw_dig;

 if (dm_digtable.dig_enable_flag == 0)
  return;

 if (dm_digtable.dig_algorithm_switch)
  fw_dig = 0;
 if (fw_dig <= 3) {
  for (i = 0; i < 3; i++)
   rtl92e_set_bb_reg(dev, UFWP, bMaskByte1, 0x8);
  fw_dig++;
  dm_digtable.dig_state = DM_STA_DIG_OFF;
 }

 if (priv->rtllib->state == RTLLIB_LINKED)
  dm_digtable.CurSTAConnectState = DIG_STA_CONNECT;
 else
  dm_digtable.CurSTAConnectState = DIG_STA_DISCONNECT;


 dm_digtable.rssi_val = priv->undecorated_smoothed_pwdb;
 _rtl92e_dm_initial_gain(dev);
 _rtl92e_dm_pd_th(dev);
 _rtl92e_dm_cs_ratio(dev);
 if (dm_digtable.dig_algorithm_switch)
  dm_digtable.dig_algorithm_switch = 0;
 dm_digtable.PreSTAConnectState = dm_digtable.CurSTAConnectState;

}
