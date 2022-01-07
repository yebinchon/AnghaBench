
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txpower_tracking; int txpower_track_control; int* ofdm_index; int cck_index; int swing_idx_cck_base; int* swing_idx_ofdm_base; scalar_t__* power_index_offset; scalar_t__* delta_power_index_last; scalar_t__* delta_power_index; scalar_t__ thermalvalue; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 size_t RF90_PATH_A ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723be_dm_init_txpower_tracking(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->dm.txpower_tracking = 1;
 rtlpriv->dm.txpower_track_control = 1;
 rtlpriv->dm.thermalvalue = 0;

 rtlpriv->dm.ofdm_index[0] = 30;
 rtlpriv->dm.cck_index = 20;

 rtlpriv->dm.swing_idx_cck_base = rtlpriv->dm.cck_index;

 rtlpriv->dm.swing_idx_ofdm_base[0] = rtlpriv->dm.ofdm_index[0];
 rtlpriv->dm.delta_power_index[RF90_PATH_A] = 0;
 rtlpriv->dm.delta_power_index_last[RF90_PATH_A] = 0;
 rtlpriv->dm.power_index_offset[RF90_PATH_A] = 0;

 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "  rtlpriv->dm.txpower_tracking = %d\n",
    rtlpriv->dm.txpower_tracking);
}
