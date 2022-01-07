
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rtl_phy {int dummy; } ;
struct rtl_priv {TYPE_1__* cfg; struct rtl_phy phy; } ;
struct TYPE_5__ {scalar_t__* rx_mask; } ;
struct TYPE_6__ {TYPE_2__ mcs; } ;
struct ieee80211_sta {TYPE_3__ ht_cap; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int * maps; } ;


 scalar_t__ RF_2T2R ;
 size_t RTL_RC_HT_RATEMCS15 ;
 size_t RTL_RC_HT_RATEMCS7 ;
 scalar_t__ get_rf_type (struct rtl_phy*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static u8 _rtl_get_highest_n_rate(struct ieee80211_hw *hw,
      struct ieee80211_sta *sta)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 hw_rate;

 if (get_rf_type(rtlphy) == RF_2T2R &&
     sta->ht_cap.mcs.rx_mask[1] != 0)
  hw_rate = rtlpriv->cfg->maps[RTL_RC_HT_RATEMCS15];
 else
  hw_rate = rtlpriv->cfg->maps[RTL_RC_HT_RATEMCS7];

 return hw_rate;
}
