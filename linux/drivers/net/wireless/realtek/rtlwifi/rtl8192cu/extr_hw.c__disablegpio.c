
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ REG_GPIO_MUXCFG ;
 scalar_t__ REG_GPIO_PIN_CTRL ;
 scalar_t__ REG_LEDCFG0 ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,scalar_t__) ;
 int rtl_read_word (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void _disablegpio(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);







 u8 value8;
 u16 value16;
 u32 value32;


 rtl_write_word(rtlpriv, REG_GPIO_PIN_CTRL+2, 0x0000);
 value32 = rtl_read_dword(rtlpriv, REG_GPIO_PIN_CTRL) & 0xFFFF00FF;
 value8 = (u8)(value32&0x000000FF);
 value32 |= ((value8<<8) | 0x00FF0000);
 rtl_write_dword(rtlpriv, REG_GPIO_PIN_CTRL, value32);

 rtl_write_byte(rtlpriv, REG_GPIO_MUXCFG+3, 0x00);
 value16 = rtl_read_word(rtlpriv, REG_GPIO_MUXCFG+2) & 0xFF0F;
 value8 = (u8)(value16&0x000F);
 value16 |= ((value8<<4) | 0x0780);
 rtl_write_word(rtlpriv, REG_GPIO_PIN_CTRL+2, value16);

 rtl_write_word(rtlpriv, REG_LEDCFG0, 0x8080);
}
