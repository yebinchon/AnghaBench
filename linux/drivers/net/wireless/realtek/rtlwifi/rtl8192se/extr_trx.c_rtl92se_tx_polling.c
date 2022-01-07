
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int TP_POLL ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl92se_tx_polling(struct ieee80211_hw *hw, u8 hw_queue)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 rtl_write_word(rtlpriv, TP_POLL, BIT(0) << (hw_queue));
}
