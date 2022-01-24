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
struct TYPE_4__ {scalar_t__ rfoff_reason; } ;
struct rtl_led {int dummy; } ;
struct TYPE_3__ {struct rtl_led sw_led0; } ;
struct rtl_priv {TYPE_2__ psc; TYPE_1__ ledctl; } ;
struct rtl_pci {int up_first_time; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ RF_CHANGE_BY_IPS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct rtl_led*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct rtl_led*) ; 
 struct rtl_pci* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_pci *rtlpci = FUNC2(FUNC3(hw));
	struct rtl_led *pled0 = &rtlpriv->ledctl.sw_led0;

	if (rtlpci->up_first_time == 1)
		return;

	if (rtlpriv->psc.rfoff_reason == RF_CHANGE_BY_IPS)
		FUNC1(hw, pled0);
	else
		FUNC0(hw, pled0);
}