
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_6__ {int interfaceindex; } ;
struct rtl_priv {TYPE_3__ rtlhal; TYPE_2__* cfg; } ;
struct rtl_pci {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_mac {int link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* led_control ) (struct ieee80211_hw*,int ) ;} ;


 int BDWORD ;
 int COMP_INIT ;
 int DBG_LOUD ;
 int LED_CTL_POWER_OFF ;
 int MAC80211_NOLINK ;
 int MASKBYTE0 ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ REG_APSD_CTRL ;
 scalar_t__ REG_CR ;
 scalar_t__ REG_PCIE_CTRL_REG ;
 scalar_t__ REG_SYS_FUNC_EN ;
 int RF90_PATH_A ;
 int RFPGA0_ANALOGPARAMETER4 ;
 int RFREG_OFFSET_MASK ;
 scalar_t__ RF_CHANGE_BY_PS ;
 int ROFDM0_TRXPATHENABLE ;
 int ROFDM1_TRXPATHENABLE ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl92de_poweroff_adapter (struct ieee80211_hw*) ;
 int _rtl92de_set_media_status (struct ieee80211_hw*,int) ;
 scalar_t__ rtl92d_phy_check_poweroff (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int,int ,int) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;
 int stub1 (struct ieee80211_hw*,int ) ;
 int udelay (int) ;

void rtl92de_card_disable(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 enum nl80211_iftype opmode;

 mac->link_state = MAC80211_NOLINK;
 opmode = NL80211_IFTYPE_UNSPECIFIED;
 _rtl92de_set_media_status(hw, opmode);

 if (rtlpci->driver_is_goingto_unload ||
     ppsc->rfoff_reason > RF_CHANGE_BY_PS)
  rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);
 RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
 rtl_write_byte(rtlpriv, REG_PCIE_CTRL_REG + 1, 0xFE);
 udelay(50);





 rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0xf);
 rtl_set_rfreg(hw, RF90_PATH_A, 0x00, RFREG_OFFSET_MASK, 0x00);


 rtl_write_byte(rtlpriv, REG_APSD_CTRL, 0x40);


 rtl_set_bbreg(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0);
 rtl_set_bbreg(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0);


 rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE2);



 if (rtlpriv->rtlhal.interfaceindex == 1)
  rtl_write_byte(rtlpriv, REG_SYS_FUNC_EN, 0xE0);
 udelay(50);



 rtl_write_byte(rtlpriv, REG_PCIE_CTRL_REG + 1, 0xff);
 udelay(50);
 rtl_write_byte(rtlpriv, REG_CR, 0x0);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "==> Do power off.......\n");
 if (rtl92d_phy_check_poweroff(hw))
  _rtl92de_poweroff_adapter(hw);
 return;
}
