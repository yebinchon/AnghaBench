
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ REG_MCUFWDL ;
 int rtl_fw_block_write (struct ieee80211_hw*,int const*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

void rtl_fw_page_write(struct ieee80211_hw *hw, u32 page, const u8 *buffer,
         u32 size)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 value8;
 u8 u8page = (u8)(page & 0x07);

 value8 = (rtl_read_byte(rtlpriv, REG_MCUFWDL + 2) & 0xF8) | u8page;

 rtl_write_byte(rtlpriv, (REG_MCUFWDL + 2), value8);
 rtl_fw_block_write(hw, buffer, size);
}
