
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_led {int dummy; } ;
struct TYPE_2__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct rtl_hal {int hw_type; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;


 int HARDWARE_TYPE_RTL8812AE ;




 int rtl8812ae_sw_led_off (struct ieee80211_hw*,struct rtl_led*) ;
 int rtl8812ae_sw_led_on (struct ieee80211_hw*,struct rtl_led*) ;
 int rtl8821ae_sw_led_off (struct ieee80211_hw*,struct rtl_led*) ;
 int rtl8821ae_sw_led_on (struct ieee80211_hw*,struct rtl_led*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_sw_led_control(struct ieee80211_hw *hw,
          enum led_ctl_mode ledaction)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 switch (ledaction) {
 case 128:
 case 131:
 case 130:
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
   rtl8812ae_sw_led_on(hw, pled0);
  else
   rtl8821ae_sw_led_on(hw, pled0);
  break;
 case 129:
  if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
   rtl8812ae_sw_led_off(hw, pled0);
  else
   rtl8821ae_sw_led_off(hw, pled0);
  break;
 default:
  break;
 }
}
