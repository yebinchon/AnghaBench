
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_usb {scalar_t__ disablehwsm; } ;
struct rtl_ps_ctl {int dummy; } ;
struct TYPE_6__ {int iqk_initialized; } ;
struct rtl_priv {TYPE_3__ phy; TYPE_2__* cfg; } ;
struct rtl_mac {int link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* led_control ) (struct ieee80211_hw*,int ) ;} ;


 int LED_CTL_POWER_OFF ;
 int MAC80211_NOLINK ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int _rtl92cu_set_media_status (struct ieee80211_hw*,int) ;
 int carddisable_hwsm (struct ieee80211_hw*) ;
 int carddisablewithout_hwsm (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ) ;

void rtl92cu_card_disable(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 enum nl80211_iftype opmode;

 mac->link_state = MAC80211_NOLINK;
 opmode = NL80211_IFTYPE_UNSPECIFIED;
 _rtl92cu_set_media_status(hw, opmode);
 rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);
 RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
 if (rtlusb->disablehwsm)
  carddisable_hwsm(hw);
 else
  carddisablewithout_hwsm(hw);


 rtlpriv->phy.iqk_initialized = 0;
}
