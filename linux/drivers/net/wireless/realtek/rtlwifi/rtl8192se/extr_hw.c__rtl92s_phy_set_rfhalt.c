
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct rtl_priv {int dummy; } ;
struct rtl_hal {scalar_t__ driver_going2unload; } ;
struct ieee80211_hw {int dummy; } ;


 int AFE_PLL_CTRL ;
 int AFE_XTAL_CTRL ;
 int BIT (int) ;
 int CMDR ;
 int LDOA15_CTRL ;
 int LDOV12D_CTRL ;
 int PHY_CCA ;
 int REG_SYS_FUNC_EN ;
 scalar_t__ RF_CHANGE_BY_IPS ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int SPS1_CTRL ;
 int SYS_CLKR ;
 int TXPAUSE ;
 int _rtl92s_set_sysclk (struct ieee80211_hw*,int) ;
 int pr_err (char*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl92s_phy_set_rfhalt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 u8 u1btmp;

 if (rtlhal->driver_going2unload)
  rtl_write_byte(rtlpriv, 0x560, 0x0);


 u1btmp = rtl_read_byte(rtlpriv, LDOV12D_CTRL);
 u1btmp |= BIT(0);
 rtl_write_byte(rtlpriv, LDOV12D_CTRL, u1btmp);
 rtl_write_byte(rtlpriv, SPS1_CTRL, 0x0);
 rtl_write_byte(rtlpriv, TXPAUSE, 0xFF);
 rtl_write_word(rtlpriv, CMDR, 0x57FC);
 udelay(100);
 rtl_write_word(rtlpriv, CMDR, 0x77FC);
 rtl_write_byte(rtlpriv, PHY_CCA, 0x0);
 udelay(10);
 rtl_write_word(rtlpriv, CMDR, 0x37FC);
 udelay(10);
 rtl_write_word(rtlpriv, CMDR, 0x77FC);
 udelay(10);
 rtl_write_word(rtlpriv, CMDR, 0x57FC);
 rtl_write_word(rtlpriv, CMDR, 0x0000);

 if (rtlhal->driver_going2unload) {
  u1btmp = rtl_read_byte(rtlpriv, (REG_SYS_FUNC_EN + 1));
  u1btmp &= ~(BIT(0));
  rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN + 1, u1btmp);
 }

 u1btmp = rtl_read_byte(rtlpriv, (SYS_CLKR + 1));





 if (u1btmp & BIT(7)) {
  u1btmp &= ~(BIT(6) | BIT(7));
  if (!_rtl92s_set_sysclk(hw, u1btmp)) {
   pr_err("Switch ctrl path fail\n");
   return;
  }
 }


 if (ppsc->rfoff_reason == RF_CHANGE_BY_IPS &&
  !rtlhal->driver_going2unload) {

  rtl_write_byte(rtlpriv, 0x03, 0xF9);

 } else {





  rtl_write_byte(rtlpriv, 0x03, 0xF9);
 }

 rtl_write_byte(rtlpriv, SYS_CLKR + 1, 0x70);
 rtl_write_byte(rtlpriv, AFE_PLL_CTRL + 1, 0x68);
 rtl_write_byte(rtlpriv, AFE_PLL_CTRL, 0x00);
 rtl_write_byte(rtlpriv, LDOA15_CTRL, 0x34);
 rtl_write_byte(rtlpriv, AFE_XTAL_CTRL, 0x0E);
 RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);

}
