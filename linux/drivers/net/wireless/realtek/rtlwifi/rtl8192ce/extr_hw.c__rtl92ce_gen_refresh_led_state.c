
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct rtl_led {int dummy; } ;
struct TYPE_2__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_pci {scalar_t__ up_first_time; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RF_CHANGE_BY_INIT ;
 scalar_t__ RF_CHANGE_BY_IPS ;
 int rtl92ce_sw_led_off (struct ieee80211_hw*,struct rtl_led*) ;
 int rtl92ce_sw_led_on (struct ieee80211_hw*,struct rtl_led*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

__attribute__((used)) static void _rtl92ce_gen_refresh_led_state(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;

 if (rtlpci->up_first_time)
  return;

 if (ppsc->rfoff_reason == RF_CHANGE_BY_IPS)
  rtl92ce_sw_led_on(hw, pled0);
 else if (ppsc->rfoff_reason == RF_CHANGE_BY_INIT)
  rtl92ce_sw_led_on(hw, pled0);
 else
  rtl92ce_sw_led_off(hw, pled0);
}
