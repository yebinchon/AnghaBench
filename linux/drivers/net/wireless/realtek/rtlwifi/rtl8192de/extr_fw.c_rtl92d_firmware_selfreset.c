
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_FW ;
 int DBG_DMESG ;
 scalar_t__ REG_HMETFR ;
 scalar_t__ REG_SYS_FUNC_EN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int WARN_ONCE (int,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int udelay (int) ;

void rtl92d_firmware_selfreset(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 u1b_tmp;
 u8 delay = 100;


 rtl_write_byte(rtlpriv, REG_HMETFR + 3, 0x20);
 u1b_tmp = rtl_read_byte(rtlpriv, REG_SYS_FUNC_EN + 1);
 while (u1b_tmp & BIT(2)) {
  delay--;
  if (delay == 0)
   break;
  udelay(50);
  u1b_tmp = rtl_read_byte(rtlpriv, REG_SYS_FUNC_EN + 1);
 }
 WARN_ONCE((delay <= 0), "rtl8192de: 8051 reset failed!\n");
 RT_TRACE(rtlpriv, COMP_FW, DBG_DMESG,
   "=====> 8051 reset success (%d)\n", delay);
}
