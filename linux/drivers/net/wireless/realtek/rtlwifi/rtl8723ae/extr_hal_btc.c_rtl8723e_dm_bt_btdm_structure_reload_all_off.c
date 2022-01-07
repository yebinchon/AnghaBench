
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;
struct btdm_8723 {int all_off; int pta_on; int wlan_act_hi; } ;


 int rtl8723e_dm_bt_btdm_structure_reload (struct ieee80211_hw*,struct btdm_8723*) ;

__attribute__((used)) static void rtl8723e_dm_bt_btdm_structure_reload_all_off(struct ieee80211_hw *hw,
        struct btdm_8723 *btdm)
{
 rtl8723e_dm_bt_btdm_structure_reload(hw, btdm);
 btdm->all_off = 1;
 btdm->pta_on = 0;
 btdm->wlan_act_hi = 0x10;
}
