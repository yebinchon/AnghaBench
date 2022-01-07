
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dm_type; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int DM_BIT_IGI_11N ;
 int DM_REG_IGI_A_11N ;
 int DM_TYPE_BYDRIVER ;
 int rtl92ee_dm_init_dynamic_atc_switch (struct ieee80211_hw*) ;
 int rtl92ee_dm_init_edca_turbo (struct ieee80211_hw*) ;
 int rtl92ee_dm_init_primary_cca_check (struct ieee80211_hw*) ;
 int rtl92ee_dm_init_rate_adaptive_mask (struct ieee80211_hw*) ;
 int rtl92ee_dm_init_txpower_tracking (struct ieee80211_hw*) ;
 int rtl_dm_diginit (struct ieee80211_hw*,int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92ee_dm_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 cur_igvalue = rtl_get_bbreg(hw, DM_REG_IGI_A_11N, DM_BIT_IGI_11N);

 rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;

 rtl_dm_diginit(hw, cur_igvalue);
 rtl92ee_dm_init_rate_adaptive_mask(hw);
 rtl92ee_dm_init_primary_cca_check(hw);
 rtl92ee_dm_init_edca_turbo(hw);
 rtl92ee_dm_init_txpower_tracking(hw);
 rtl92ee_dm_init_dynamic_atc_switch(hw);
}
