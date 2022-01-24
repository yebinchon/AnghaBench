#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_LED ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int LED_CTL_LINK ; 
 int LED_CTL_NO_LINK ; 
 int LED_CTL_POWER_ON ; 
 int LED_CTL_RX ; 
 int LED_CTL_SITE_SURVEY ; 
 int LED_CTL_START_TO_LINK ; 
 int LED_CTL_TX ; 
 scalar_t__ RF_CHANGE_BY_PS ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC3 (struct rtl_priv*) ; 

void FUNC4(struct ieee80211_hw *hw,
			enum led_ctl_mode ledaction)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_ps_ctl *ppsc = FUNC3(FUNC2(hw));

	if ((ppsc->rfoff_reason > RF_CHANGE_BY_PS) &&
	    (ledaction == LED_CTL_TX ||
	     ledaction == LED_CTL_RX ||
	     ledaction == LED_CTL_SITE_SURVEY ||
	     ledaction == LED_CTL_LINK ||
	     ledaction == LED_CTL_NO_LINK ||
	     ledaction == LED_CTL_START_TO_LINK ||
	     ledaction == LED_CTL_POWER_ON)) {
		return;
	}
	FUNC0(rtlpriv, COMP_LED, DBG_LOUD, "ledaction %d\n",
		 ledaction);
	FUNC1(hw, ledaction);
}