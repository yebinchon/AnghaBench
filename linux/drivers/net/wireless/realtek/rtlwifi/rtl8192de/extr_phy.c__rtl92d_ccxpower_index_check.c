
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct rtl_phy {void* cur_ofdm24g_txpwridx; void* cur_cck_txpwridx; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92d_ccxpower_index_check(struct ieee80211_hw *hw,
 u8 channel, u8 *cckpowerlevel, u8 *ofdmpowerlevel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 rtlphy->cur_cck_txpwridx = cckpowerlevel[0];
 rtlphy->cur_ofdm24g_txpwridx = ofdmpowerlevel[0];
}
