
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_led {int ledpin; int ledon; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rtl_led_pin { ____Placeholder_rtl_led_pin } rtl_led_pin ;



__attribute__((used)) static void _rtl8723be_init_led(struct ieee80211_hw *hw, struct rtl_led *pled,
    enum rtl_led_pin ledpin)
{
 pled->hw = hw;
 pled->ledpin = ledpin;
 pled->ledon = 0;
}
