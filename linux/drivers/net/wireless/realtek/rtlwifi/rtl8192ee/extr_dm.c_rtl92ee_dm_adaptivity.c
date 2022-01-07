
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl92ee_dm_dynamic_edcca (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92ee_dm_adaptivity(struct ieee80211_hw *hw)
{
 rtl92ee_dm_dynamic_edcca(hw);
}
