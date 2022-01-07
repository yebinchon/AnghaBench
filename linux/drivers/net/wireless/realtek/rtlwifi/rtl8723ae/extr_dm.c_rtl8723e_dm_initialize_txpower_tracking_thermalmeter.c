
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txpower_tracking; int txpower_trackinginit; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_dm_initialize_txpower_tracking_thermalmeter(
    struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->dm.txpower_tracking = 1;
 rtlpriv->dm.txpower_trackinginit = 0;

 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "pMgntInfo->txpower_tracking = %d\n",
    rtlpriv->dm.txpower_tracking);
}
