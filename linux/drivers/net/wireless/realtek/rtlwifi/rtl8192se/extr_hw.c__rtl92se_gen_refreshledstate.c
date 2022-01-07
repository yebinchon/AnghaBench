
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rfoff_reason; } ;
struct rtl_led {int dummy; } ;
struct TYPE_3__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_2__ psc; TYPE_1__ ledctl; } ;
struct rtl_pci {int up_first_time; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RF_CHANGE_BY_IPS ;
 int rtl92se_sw_led_off (struct ieee80211_hw*,struct rtl_led*) ;
 int rtl92se_sw_led_on (struct ieee80211_hw*,struct rtl_led*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92se_gen_refreshledstate(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;

 if (rtlpci->up_first_time == 1)
  return;

 if (rtlpriv->psc.rfoff_reason == RF_CHANGE_BY_IPS)
  rtl92se_sw_led_on(hw, pled0);
 else
  rtl92se_sw_led_off(hw, pled0);
}
