
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sw_led1; int sw_led0; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct ieee80211_hw {int dummy; } ;


 int rtl92cu_deinit_led (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92cu_deinit_sw_leds(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl92cu_deinit_led(&rtlpriv->ledctl.sw_led0);
 rtl92cu_deinit_led(&rtlpriv->ledctl.sw_led1);
}
