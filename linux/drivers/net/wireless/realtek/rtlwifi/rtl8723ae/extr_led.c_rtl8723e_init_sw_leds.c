
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sw_led1; int sw_led0; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct ieee80211_hw {int dummy; } ;


 int LED_PIN_LED0 ;
 int LED_PIN_LED1 ;
 int _rtl8723e_init_led (struct ieee80211_hw*,int *,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723e_init_sw_leds(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 _rtl8723e_init_led(hw, &rtlpriv->ledctl.sw_led0, LED_PIN_LED0);
 _rtl8723e_init_led(hw, &rtlpriv->ledctl.sw_led1, LED_PIN_LED1);
}
