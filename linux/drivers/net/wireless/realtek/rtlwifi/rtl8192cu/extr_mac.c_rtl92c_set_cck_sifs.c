
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ REG_SIFS_CCK ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int ) ;

__attribute__((used)) static void rtl92c_set_cck_sifs(struct ieee80211_hw *hw, u8 trx_sifs,
    u8 ctx_sifs)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, REG_SIFS_CCK, trx_sifs);
 rtl_write_byte(rtlpriv, (REG_SIFS_CCK + 1), ctx_sifs);
}
