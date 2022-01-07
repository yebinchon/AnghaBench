
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; } ;


 int wiphy_rfkill_stop_polling (int ) ;

void rtl_deinit_rfkill(struct ieee80211_hw *hw)
{
 wiphy_rfkill_stop_polling(hw->wiphy);
}
