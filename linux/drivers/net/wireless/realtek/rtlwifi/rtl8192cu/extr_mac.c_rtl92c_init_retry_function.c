
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int EN_AMPDU_RTY_NEW ;
 int REG_ACKTO ;
 int REG_FWHW_TXQ_CTRL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void rtl92c_init_retry_function(struct ieee80211_hw *hw)
{
 u8 value8;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 value8 = rtl_read_byte(rtlpriv, REG_FWHW_TXQ_CTRL);
 value8 |= EN_AMPDU_RTY_NEW;
 rtl_write_byte(rtlpriv, REG_FWHW_TXQ_CTRL, value8);

 rtl_write_byte(rtlpriv, REG_ACKTO, 0x40);
}
