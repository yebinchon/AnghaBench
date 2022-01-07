
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int REG_RD_CTRL ;
 int REG_RD_NAV_NXT ;
 int REG_RD_RESP_PKT_TH ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92c_init_rdg_setting(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, REG_RD_CTRL, 0xFF);
 rtl_write_word(rtlpriv, REG_RD_NAV_NXT, 0x200);
 rtl_write_byte(rtlpriv, REG_RD_RESP_PKT_TH, 0x05);
}
