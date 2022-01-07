
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ START_ADDRESS ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int ) ;

void rtl_fw_block_write(struct ieee80211_hw *hw, const u8 *buffer, u32 size)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 *pu4byteptr = (u8 *)buffer;
 u32 i;

 for (i = 0; i < size; i++)
  rtl_write_byte(rtlpriv, (START_ADDRESS + i), *(pu4byteptr + i));
}
