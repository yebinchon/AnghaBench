
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int IMR8190_DISABLED ;
 int REG_HIMR ;
 int REG_HIMRE ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int ) ;

void rtl92c_disable_interrupt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_dword(rtlpriv, REG_HIMR, IMR8190_DISABLED);
 rtl_write_dword(rtlpriv, REG_HIMRE, IMR8190_DISABLED);
}
