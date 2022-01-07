
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_SYS_CLKR ;
 scalar_t__ REG_SYS_ISO_CTRL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _resetdigitalprocedure2(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);





 rtl_write_word(rtlpriv, REG_SYS_CLKR, 0x70A3);
 rtl_write_byte(rtlpriv, REG_SYS_ISO_CTRL+1, 0x82);
}
