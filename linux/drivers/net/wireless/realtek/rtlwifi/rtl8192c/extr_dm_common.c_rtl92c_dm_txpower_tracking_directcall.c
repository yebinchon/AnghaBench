
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl92c_dm_txpower_tracking_callback_thermalmeter (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_txpower_tracking_directcall(struct ieee80211_hw *hw)
{
 rtl92c_dm_txpower_tracking_callback_thermalmeter(hw);
}
