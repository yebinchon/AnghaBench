
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl92c_dm_initialize_txpower_tracking_thermalmeter (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_initialize_txpower_tracking(struct ieee80211_hw *hw)
{
 rtl92c_dm_initialize_txpower_tracking_thermalmeter(hw);
}
