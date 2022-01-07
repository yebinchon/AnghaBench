
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BIT (int ) ;
 scalar_t__ REG_HMETFR ;
 scalar_t__ REG_MCUTST_1 ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ rtl_read_byte (struct rtl_priv*,scalar_t__) ;

__attribute__((used)) static bool _rtl92c_check_fw_read_last_h2c(struct ieee80211_hw *hw, u8 boxnum)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 val_hmetfr, val_mcutst_1;
 bool result = 0;

 val_hmetfr = rtl_read_byte(rtlpriv, REG_HMETFR);
 val_mcutst_1 = rtl_read_byte(rtlpriv, (REG_MCUTST_1 + boxnum));

 if (((val_hmetfr >> boxnum) & BIT(0)) == 0 && val_mcutst_1 == 0)
  result = 1;
 return result;
}
