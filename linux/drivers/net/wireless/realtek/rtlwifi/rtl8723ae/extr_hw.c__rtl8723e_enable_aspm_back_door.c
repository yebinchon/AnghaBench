
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ps_ctl {scalar_t__ support_backdoor; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int,int) ;

__attribute__((used)) static void _rtl8723e_enable_aspm_back_door(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));

 rtl_write_byte(rtlpriv, 0x34b, 0x93);
 rtl_write_word(rtlpriv, 0x350, 0x870c);
 rtl_write_byte(rtlpriv, 0x352, 0x1);

 if (ppsc->support_backdoor)
  rtl_write_byte(rtlpriv, 0x349, 0x1b);
 else
  rtl_write_byte(rtlpriv, 0x349, 0x03);

 rtl_write_word(rtlpriv, 0x350, 0x2718);
 rtl_write_byte(rtlpriv, 0x352, 0x1);
}
