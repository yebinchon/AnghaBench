
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dm_type; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int DM_TYPE_BYDRIVER ;
 int ROFDM0_XAAGCCORE1 ;
 int rtl8723_dm_init_dynamic_bb_powersaving (struct ieee80211_hw*) ;
 int rtl8723_dm_init_dynamic_txpower (struct ieee80211_hw*) ;
 int rtl8723_dm_init_edca_turbo (struct ieee80211_hw*) ;
 int rtl8723be_dm_init_dynamic_atc_switch (struct ieee80211_hw*) ;
 int rtl8723be_dm_init_rate_adaptive_mask (struct ieee80211_hw*) ;
 int rtl8723be_dm_init_txpower_tracking (struct ieee80211_hw*) ;
 int rtl_dm_diginit (struct ieee80211_hw*,int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723be_dm_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 cur_igvalue = rtl_get_bbreg(hw, ROFDM0_XAAGCCORE1, 0x7f);

 rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;
 rtl_dm_diginit(hw, cur_igvalue);
 rtl8723be_dm_init_rate_adaptive_mask(hw);
 rtl8723_dm_init_edca_turbo(hw);
 rtl8723_dm_init_dynamic_bb_powersaving(hw);
 rtl8723_dm_init_dynamic_txpower(hw);
 rtl8723be_dm_init_txpower_tracking(hw);
 rtl8723be_dm_init_dynamic_atc_switch(hw);
}
