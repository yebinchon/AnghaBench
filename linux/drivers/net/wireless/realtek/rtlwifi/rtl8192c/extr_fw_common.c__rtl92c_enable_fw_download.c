
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ HARDWARE_TYPE_RTL8192CE ;
 scalar_t__ HARDWARE_TYPE_RTL8192CU ;
 int MCUFWDL_EN ;
 scalar_t__ REG_MCUFWDL ;
 scalar_t__ REG_SYS_FUNC_EN ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_read_dword (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,int ) ;

__attribute__((used)) static void _rtl92c_enable_fw_download(struct ieee80211_hw *hw, bool enable)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192CU) {
  u32 value32 = rtl_read_dword(rtlpriv, REG_MCUFWDL);

  if (enable)
   value32 |= MCUFWDL_EN;
  else
   value32 &= ~MCUFWDL_EN;
  rtl_write_dword(rtlpriv, REG_MCUFWDL, value32);
 } else if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192CE) {
  u8 tmp;

  if (enable) {
   tmp = rtl_read_byte(rtlpriv, REG_SYS_FUNC_EN + 1);
   rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN + 1,
           tmp | 0x04);

   tmp = rtl_read_byte(rtlpriv, REG_MCUFWDL);
   rtl_write_byte(rtlpriv, REG_MCUFWDL, tmp | 0x01);

   tmp = rtl_read_byte(rtlpriv, REG_MCUFWDL + 2);
   rtl_write_byte(rtlpriv, REG_MCUFWDL + 2, tmp & 0xf7);
  } else {
   tmp = rtl_read_byte(rtlpriv, REG_MCUFWDL);
   rtl_write_byte(rtlpriv, REG_MCUFWDL, tmp & 0xfe);

   rtl_write_byte(rtlpriv, REG_MCUFWDL + 1, 0x00);
  }
 }
}
