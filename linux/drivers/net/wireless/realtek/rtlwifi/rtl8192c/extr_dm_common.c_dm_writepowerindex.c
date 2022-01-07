
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int * power_index_reg ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;

void dm_writepowerindex(struct ieee80211_hw *hw, u8 value)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 index;

 for (index = 0; index < 6; index++)
  rtl_write_byte(rtlpriv, power_index_reg[index], value);
}
