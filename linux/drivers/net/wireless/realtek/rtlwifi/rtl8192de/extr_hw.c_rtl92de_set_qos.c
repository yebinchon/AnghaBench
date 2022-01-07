
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl92d_dm_init_edca_turbo (struct ieee80211_hw*) ;

void rtl92de_set_qos(struct ieee80211_hw *hw, int aci)
{
 rtl92d_dm_init_edca_turbo(hw);
}
