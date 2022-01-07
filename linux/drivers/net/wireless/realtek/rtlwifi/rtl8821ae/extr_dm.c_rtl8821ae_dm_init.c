
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dm_type; } ;
struct TYPE_4__ {int iqk_lock; } ;
struct rtl_phy {int lck_inprogress; } ;
struct rtl_priv {TYPE_1__ dm; TYPE_2__ locks; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int DM_TYPE_BYDRIVER ;
 int ROFDM0_XAAGCCORE1 ;
 int rtl8821ae_dm_common_info_self_init (struct ieee80211_hw*) ;
 int rtl8821ae_dm_init_dynamic_atc_switch (struct ieee80211_hw*) ;
 int rtl8821ae_dm_init_edca_turbo (struct ieee80211_hw*) ;
 int rtl8821ae_dm_init_rate_adaptive_mask (struct ieee80211_hw*) ;
 int rtl8821ae_dm_initialize_txpower_tracking_thermalmeter (struct ieee80211_hw*) ;
 int rtl_dm_diginit (struct ieee80211_hw*,int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void rtl8821ae_dm_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u32 cur_igvalue = rtl_get_bbreg(hw, ROFDM0_XAAGCCORE1, 0x7f);

 spin_lock(&rtlpriv->locks.iqk_lock);
 rtlphy->lck_inprogress = 0;
 spin_unlock(&rtlpriv->locks.iqk_lock);

 rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;
 rtl8821ae_dm_common_info_self_init(hw);
 rtl_dm_diginit(hw, cur_igvalue);
 rtl8821ae_dm_init_rate_adaptive_mask(hw);
 rtl8821ae_dm_init_edca_turbo(hw);
 rtl8821ae_dm_initialize_txpower_tracking_thermalmeter(hw);
 rtl8821ae_dm_init_dynamic_atc_switch(hw);
}
