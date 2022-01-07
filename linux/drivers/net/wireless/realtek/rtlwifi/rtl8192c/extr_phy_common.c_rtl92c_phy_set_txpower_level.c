
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_efuse {int txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* phy_rf6052_set_ofdm_txpower ) (struct ieee80211_hw*,int *,int ) ;int (* phy_rf6052_set_cck_txpower ) (struct ieee80211_hw*,int *) ;} ;


 int _rtl92c_ccxpower_index_check (struct ieee80211_hw*,int ,int *,int *) ;
 int _rtl92c_get_txpower_index (struct ieee80211_hw*,int ,int *,int *) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int *) ;
 int stub2 (struct ieee80211_hw*,int *,int ) ;

void rtl92c_phy_set_txpower_level(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 cckpowerlevel[2], ofdmpowerlevel[2];

 if (!rtlefuse->txpwr_fromeprom)
  return;
 _rtl92c_get_txpower_index(hw, channel,
      &cckpowerlevel[0], &ofdmpowerlevel[0]);
 _rtl92c_ccxpower_index_check(hw, channel, &cckpowerlevel[0],
         &ofdmpowerlevel[0]);
 rtlpriv->cfg->ops->phy_rf6052_set_cck_txpower(hw, &cckpowerlevel[0]);
 rtlpriv->cfg->ops->phy_rf6052_set_ofdm_txpower(hw, &ofdmpowerlevel[0],
             channel);
}
