
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_HMETFR ;
 scalar_t__ REG_SYS_FUNC_EN ;
 int WARN_ONCE (int,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int udelay (int) ;

void rtl92c_firmware_selfreset(struct ieee80211_hw *hw)
{
 u8 u1b_tmp;
 u8 delay = 100;
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl_write_byte(rtlpriv, REG_HMETFR + 3, 0x20);
 u1b_tmp = rtl_read_byte(rtlpriv, REG_SYS_FUNC_EN + 1);

 while (u1b_tmp & BIT(2)) {
  delay--;
  if (delay == 0) {
   WARN_ONCE(1, "rtl8192c-common: 8051 reset fail.\n");
   break;
  }
  udelay(50);
  u1b_tmp = rtl_read_byte(rtlpriv, REG_SYS_FUNC_EN + 1);
 }
}
