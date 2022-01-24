#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct TYPE_3__ {scalar_t__ up_first_time; } ;
struct rtl_led {int dummy; } ;
struct TYPE_4__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_1__ rtlhal; TYPE_2__ ledctl; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 scalar_t__ RF_CHANGE_BY_INIT ; 
 scalar_t__ RF_CHANGE_BY_IPS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct rtl_led*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct rtl_led*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct rtl_led*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct rtl_led*) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));

	if (rtlpriv->rtlhal.up_first_time)
		return;

	if (ppsc->rfoff_reason == RF_CHANGE_BY_IPS)
		if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
			FUNC1(hw, pled0);
		else
			FUNC3(hw, pled0);
	else if (ppsc->rfoff_reason == RF_CHANGE_BY_INIT)
		if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
			FUNC1(hw, pled0);
		else
			FUNC3(hw, pled0);
	else
		if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
			FUNC0(hw, pled0);
		else
			FUNC2(hw, pled0);
}