
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txpower_tracking; int txpower_trackinginit; int txpower_track_control; int* swing_idx_ofdm; int swing_idx_ofdm_cur; int swing_flag_ofdm; scalar_t__ txpowercount; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 size_t RF90_PATH_A ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl88e_dm_init_txpower_tracking(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->dm.txpower_tracking = 1;
 rtlpriv->dm.txpower_trackinginit = 0;
 rtlpriv->dm.txpowercount = 0;
 rtlpriv->dm.txpower_track_control = 1;

 rtlpriv->dm.swing_idx_ofdm[RF90_PATH_A] = 12;
 rtlpriv->dm.swing_idx_ofdm_cur = 12;
 rtlpriv->dm.swing_flag_ofdm = 0;
 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "rtlpriv->dm.txpower_tracking = %d\n",
   rtlpriv->dm.txpower_tracking);
}
