
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BEACON_QUEUE ;
 int BIT (int) ;
 int REG_PCIE_CTRL_REG ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;

void rtl8821ae_tx_polling(struct ieee80211_hw *hw, u8 hw_queue)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (hw_queue == BEACON_QUEUE) {
  rtl_write_word(rtlpriv, REG_PCIE_CTRL_REG, BIT(4));
 } else {
  rtl_write_word(rtlpriv, REG_PCIE_CTRL_REG,
          BIT(0) << (hw_queue));
 }
}
