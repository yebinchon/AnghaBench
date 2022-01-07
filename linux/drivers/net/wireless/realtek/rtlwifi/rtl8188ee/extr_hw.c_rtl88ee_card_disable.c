
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_8__ {int iqk_initialized; } ;
struct TYPE_5__ {scalar_t__ driver_is_goingto_unload; } ;
struct rtl_priv {TYPE_4__ phy; TYPE_3__* cfg; TYPE_1__ rtlhal; } ;
struct rtl_mac {int link_state; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* led_control ) (struct ieee80211_hw*,int ) ;} ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int LED_CTL_POWER_OFF ;
 int MAC80211_NOLINK ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ RF_CHANGE_BY_PS ;
 int RT_RF_OFF_LEVL_HALT_NIC ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl88ee_poweroff_adapter (struct ieee80211_hw*) ;
 int _rtl88ee_set_media_status (struct ieee80211_hw*,int) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*,int ) ;

void rtl88ee_card_disable(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 enum nl80211_iftype opmode;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "RTL8188ee card disable\n");

 mac->link_state = MAC80211_NOLINK;
 opmode = NL80211_IFTYPE_UNSPECIFIED;

 _rtl88ee_set_media_status(hw, opmode);

 if (rtlpriv->rtlhal.driver_is_goingto_unload ||
     ppsc->rfoff_reason > RF_CHANGE_BY_PS)
  rtlpriv->cfg->ops->led_control(hw, LED_CTL_POWER_OFF);

 RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
 _rtl88ee_poweroff_adapter(hw);


 rtlpriv->phy.iqk_initialized = 0;
}
