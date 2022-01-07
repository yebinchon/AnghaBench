
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_chip_info {int dummy; } ;
struct ieee80211_hw {TYPE_1__* wiphy; } ;
struct TYPE_2__ {int * bands; } ;


 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int kfree (int ) ;

__attribute__((used)) static void rtw_unset_supported_band(struct ieee80211_hw *hw,
         struct rtw_chip_info *chip)
{
 kfree(hw->wiphy->bands[NL80211_BAND_2GHZ]);
 kfree(hw->wiphy->bands[NL80211_BAND_5GHZ]);
}
