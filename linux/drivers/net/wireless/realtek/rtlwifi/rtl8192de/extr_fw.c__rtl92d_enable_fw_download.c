
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ REG_MCUFWDL ;
 scalar_t__ REG_SYS_FUNC_EN ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static void _rtl92d_enable_fw_download(struct ieee80211_hw *hw, bool enable)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 tmp;

 if (enable) {
  tmp = rtl_read_byte(rtlpriv, REG_SYS_FUNC_EN + 1);
  rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN + 1, tmp | 0x04);
  tmp = rtl_read_byte(rtlpriv, REG_MCUFWDL);
  rtl_write_byte(rtlpriv, REG_MCUFWDL, tmp | 0x01);
  tmp = rtl_read_byte(rtlpriv, REG_MCUFWDL + 2);
  rtl_write_byte(rtlpriv, REG_MCUFWDL + 2, tmp & 0xf7);
 } else {
  tmp = rtl_read_byte(rtlpriv, REG_MCUFWDL);
  rtl_write_byte(rtlpriv, REG_MCUFWDL, tmp & 0xfe);




 }
}
