
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_led {int dummy; } ;
struct TYPE_2__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;






 int rtl8723e_sw_led_off (struct ieee80211_hw*,struct rtl_led*) ;
 int rtl8723e_sw_led_on (struct ieee80211_hw*,struct rtl_led*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8723e_sw_led_control(struct ieee80211_hw *hw,
         enum led_ctl_mode ledaction)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;

 switch (ledaction) {
 case 128:
 case 131:
 case 130:
  rtl8723e_sw_led_on(hw, pled0);
  break;
 case 129:
  rtl8723e_sw_led_off(hw, pled0);
  break;
 default:
  break;
 }
}
