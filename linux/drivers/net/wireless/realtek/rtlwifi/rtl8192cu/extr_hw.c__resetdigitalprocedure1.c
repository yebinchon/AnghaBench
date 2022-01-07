
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {int fw_version; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int FEN_CPUEN ;
 int FEN_ELDR ;
 int FEN_HWPDN ;
 scalar_t__ REG_AFE_PLL_CTRL ;
 scalar_t__ REG_AFE_XTAL_CTRL ;
 scalar_t__ REG_HMETFR ;
 scalar_t__ REG_MCUFWDL ;
 scalar_t__ REG_SYS_CLKR ;
 scalar_t__ REG_SYS_FUNC_EN ;
 scalar_t__ REG_SYS_ISO_CTRL ;
 int pr_err (char*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_read_word (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int rtl_write_word (struct rtl_priv*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static void _resetdigitalprocedure1(struct ieee80211_hw *hw, bool withouthwsm)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (rtlhal->fw_version <= 0x20) {






  u16 valu16 = 0;

  rtl_write_byte(rtlpriv, REG_MCUFWDL, 0);
  valu16 = rtl_read_word(rtlpriv, REG_SYS_FUNC_EN);
  rtl_write_word(rtlpriv, REG_SYS_FUNC_EN, (valu16 &
          (~FEN_CPUEN)));
  valu16 = rtl_read_word(rtlpriv, REG_SYS_FUNC_EN)&0x0FFF;
  rtl_write_word(rtlpriv, REG_SYS_FUNC_EN, (valu16 |
         (FEN_HWPDN|FEN_ELDR)));
  valu16 = rtl_read_word(rtlpriv, REG_SYS_FUNC_EN);
  rtl_write_word(rtlpriv, REG_SYS_FUNC_EN, (valu16 |
          FEN_CPUEN));
 } else {
  u8 retry_cnts = 0;


  if (rtl_read_byte(rtlpriv, REG_MCUFWDL) & BIT(1)) {

   rtl_write_byte(rtlpriv, REG_MCUFWDL, 0);

   rtl_write_byte(rtlpriv, REG_HMETFR+3, 0x20);
   while ((retry_cnts++ < 100) &&
          (FEN_CPUEN & rtl_read_word(rtlpriv,
          REG_SYS_FUNC_EN))) {
    udelay(50);
   }
   if (retry_cnts >= 100) {
    pr_err("8051 reset failed!.........................\n");

    rtl_write_byte(rtlpriv,
            REG_SYS_FUNC_EN + 1,
            0x50);
    udelay(100);
   }
  }

  rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN + 1, 0x54);
  rtl_write_byte(rtlpriv, REG_MCUFWDL, 0);
 }
 if (withouthwsm) {







  rtl_write_word(rtlpriv, REG_SYS_CLKR, 0x70A3);
  rtl_write_byte(rtlpriv, REG_AFE_PLL_CTRL, 0x80);
  rtl_write_word(rtlpriv, REG_AFE_XTAL_CTRL, 0x880F);
  rtl_write_byte(rtlpriv, REG_SYS_ISO_CTRL, 0xF9);
 }
}
