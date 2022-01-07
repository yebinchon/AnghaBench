
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;

__attribute__((used)) static void _rtl8821ae_iqk_configure_mac(
  struct ieee80211_hw *hw
  )
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_set_bbreg(hw, 0x82c, BIT(31), 0x0);
 rtl_write_byte(rtlpriv, 0x522, 0x3f);
 rtl_set_bbreg(hw, 0x550, BIT(11) | BIT(3), 0x0);
 rtl_write_byte(rtlpriv, 0x808, 0x00);
 rtl_set_bbreg(hw, 0x838, 0xf, 0xc);
}
