
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ REG_DARFRC ;
 scalar_t__ REG_RARFRC ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;

void rtl92c_init_rate_fallback(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 rtl_write_dword(rtlpriv, REG_DARFRC, 0x00000000);
 rtl_write_dword(rtlpriv, REG_DARFRC+4, 0x10080404);
 rtl_write_dword(rtlpriv, REG_RARFRC, 0x04030201);
 rtl_write_dword(rtlpriv, REG_RARFRC+4, 0x08070605);
}
