
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RQPN ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void _rtl92s_fw_set_rqpn(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_dword(rtlpriv, RQPN, 0xffffffff);
 rtl_write_dword(rtlpriv, RQPN + 4, 0xffffffff);
 rtl_write_byte(rtlpriv, RQPN + 8, 0xff);
 rtl_write_byte(rtlpriv, RQPN + 0xB, 0x80);
}
