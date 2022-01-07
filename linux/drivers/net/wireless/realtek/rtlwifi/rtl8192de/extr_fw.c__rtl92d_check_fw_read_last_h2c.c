
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int ) ;
 int REG_HMETFR ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;

__attribute__((used)) static bool _rtl92d_check_fw_read_last_h2c(struct ieee80211_hw *hw, u8 boxnum)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 val_hmetfr;
 bool result = 0;

 val_hmetfr = rtl_read_byte(rtlpriv, REG_HMETFR);
 if (((val_hmetfr >> boxnum) & BIT(0)) == 0)
  result = 1;
 return result;
}
