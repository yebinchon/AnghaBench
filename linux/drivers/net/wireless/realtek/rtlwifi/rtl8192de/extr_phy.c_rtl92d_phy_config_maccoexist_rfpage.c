
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;




 int REG_DMC ;
 int REG_RX_PKT_LIMIT ;
 int REG_TRXFF_BNDY ;

 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92d_phy_config_maccoexist_rfpage(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 switch (rtlpriv->rtlhal.macphymode) {
 case 130:
  rtl_write_byte(rtlpriv, REG_DMC, 0x0);
  rtl_write_byte(rtlpriv, REG_RX_PKT_LIMIT, 0x08);
  rtl_write_word(rtlpriv, REG_TRXFF_BNDY + 2, 0x13ff);
  break;
 case 129:
  rtl_write_byte(rtlpriv, REG_DMC, 0xf8);
  rtl_write_byte(rtlpriv, REG_RX_PKT_LIMIT, 0x08);
  rtl_write_word(rtlpriv, REG_TRXFF_BNDY + 2, 0x13ff);
  break;
 case 128:
  rtl_write_byte(rtlpriv, REG_DMC, 0x0);
  rtl_write_byte(rtlpriv, REG_RX_PKT_LIMIT, 0x10);
  rtl_write_word(rtlpriv, (REG_TRXFF_BNDY + 2), 0x27FF);
  break;
 default:
  break;
 }
}
