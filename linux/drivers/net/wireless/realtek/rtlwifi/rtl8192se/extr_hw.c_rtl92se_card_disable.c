
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_8__ {scalar_t__ pwrdomain_protect; } ;
struct rtl_priv {TYPE_4__ psc; TYPE_3__* cfg; TYPE_1__* intf_ops; } ;
struct rtl_pci {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_mac {int link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* led_control ) (struct ieee80211_hw*,int ) ;} ;
struct TYPE_5__ {int (* enable_aspm ) (struct ieee80211_hw*) ;} ;


 int LED_CTL_POWER_OFF ;
 int MAC80211_NOLINK ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ RF_CHANGE_BY_PS ;
 int _rtl92s_phy_set_rfhalt (struct ieee80211_hw*) ;
 int _rtl92se_set_media_status (struct ieee80211_hw*,int) ;
 int mdelay (int) ;
 int rtl8192se_gpiobit3_cfg_inputmode (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*) ;
 int stub2 (struct ieee80211_hw*,int ) ;
 int udelay (int) ;

void rtl92se_card_disable(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 enum nl80211_iftype opmode;
 u8 wait = 30;

 rtlpriv->intf_ops->enable_aspm(hw);

 if (rtlpci->driver_is_goingto_unload ||
  ppsc->rfoff_reason > RF_CHANGE_BY_PS)
  rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);



 rtl8192se_gpiobit3_cfg_inputmode(hw);


 while (wait-- >= 10 && rtlpriv->psc.pwrdomain_protect) {
  if (rtlpriv->psc.pwrdomain_protect)
   mdelay(20);
  else
   break;
 }

 mac->link_state = MAC80211_NOLINK;
 opmode = NL80211_IFTYPE_UNSPECIFIED;
 _rtl92se_set_media_status(hw, opmode);

 _rtl92s_phy_set_rfhalt(hw);
 udelay(100);
}
