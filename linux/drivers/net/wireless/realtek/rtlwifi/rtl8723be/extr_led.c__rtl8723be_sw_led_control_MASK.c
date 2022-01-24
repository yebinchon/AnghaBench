#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtl_led {int dummy; } ;
struct TYPE_2__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_1__ ledctl; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;

/* Variables and functions */
#define  LED_CTL_LINK 131 
#define  LED_CTL_NO_LINK 130 
#define  LED_CTL_POWER_OFF 129 
#define  LED_CTL_POWER_ON 128 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct rtl_led*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct rtl_led*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
				      enum led_ctl_mode ledaction)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;

	switch (ledaction) {
	case LED_CTL_POWER_ON:
	case LED_CTL_LINK:
	case LED_CTL_NO_LINK:
		FUNC1(hw, pled0);
		break;
	case LED_CTL_POWER_OFF:
		FUNC0(hw, pled0);
		break;
	default:
		break;
	}
}