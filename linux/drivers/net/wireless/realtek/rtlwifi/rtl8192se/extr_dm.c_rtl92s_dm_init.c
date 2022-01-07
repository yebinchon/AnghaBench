
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int undec_sm_pwdb; int dm_type; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int DM_TYPE_BYDRIVER ;
 int FW_CCA_CHK_ENABLE ;
 int WFM5 ;
 int _rtl92s_dm_init_dig (struct ieee80211_hw*) ;
 int _rtl92s_dm_init_dynamic_txpower (struct ieee80211_hw*) ;
 int _rtl92s_dm_init_rate_adaptive_mask (struct ieee80211_hw*) ;
 int _rtl92s_dm_init_txpowertracking_thermalmeter (struct ieee80211_hw*) ;
 int rtl92s_dm_init_edca_turbo (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;

void rtl92s_dm_init(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;
 rtlpriv->dm.undec_sm_pwdb = -1;

 _rtl92s_dm_init_dynamic_txpower(hw);
 rtl92s_dm_init_edca_turbo(hw);
 _rtl92s_dm_init_rate_adaptive_mask(hw);
 _rtl92s_dm_init_txpowertracking_thermalmeter(hw);
 _rtl92s_dm_init_dig(hw);

 rtl_write_dword(rtlpriv, WFM5, FW_CCA_CHK_ENABLE);
}
