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
typedef  int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; int hwradiooff; int reg_rfps_level; scalar_t__ swrf_processing; } ;
struct TYPE_4__ {int /*<<< orphan*/  rf_ps_lock; } ;
struct TYPE_3__ {scalar_t__ being_init_adapter; } ;
struct rtl_phy {scalar_t__ polarity_ctl; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_1__ rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int ERFOFF ; 
 int ERFON ; 
 int /*<<< orphan*/  REG_GPIO_IO_SEL_2 ; 
 int /*<<< orphan*/  REG_GPIO_PIN_CTRL_2 ; 
 int RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC4 (struct rtl_priv*) ; 
 int FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

bool FUNC9(struct ieee80211_hw *hw, u8 *valid)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_ps_ctl *ppsc = FUNC4(FUNC3(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	enum rf_pwrstate e_rfpowerstate_toset;
	u8 u1tmp;
	bool b_actuallyset = false;

	if (rtlpriv->rtlhal.being_init_adapter)
		return false;

	if (ppsc->swrf_processing)
		return false;

	FUNC7(&rtlpriv->locks.rf_ps_lock);
	if (ppsc->rfchange_inprogress) {
		FUNC8(&rtlpriv->locks.rf_ps_lock);
		return false;
	} else {
		ppsc->rfchange_inprogress = true;
		FUNC8(&rtlpriv->locks.rf_ps_lock);
	}

	FUNC6(rtlpriv, REG_GPIO_IO_SEL_2,
		       FUNC5(rtlpriv, REG_GPIO_IO_SEL_2) & ~(FUNC0(1)));

	u1tmp = FUNC5(rtlpriv, REG_GPIO_PIN_CTRL_2);

	if (rtlphy->polarity_ctl)
		e_rfpowerstate_toset = (u1tmp & FUNC0(1)) ? ERFOFF : ERFON;
	else
		e_rfpowerstate_toset = (u1tmp & FUNC0(1)) ? ERFON : ERFOFF;

	if ((ppsc->hwradiooff) && (e_rfpowerstate_toset == ERFON)) {
		FUNC2(rtlpriv, COMP_RF, DBG_DMESG,
			 "GPIOChangeRF  - HW Radio ON, RF ON\n");

		e_rfpowerstate_toset = ERFON;
		ppsc->hwradiooff = false;
		b_actuallyset = true;
	} else if (!ppsc->hwradiooff && (e_rfpowerstate_toset == ERFOFF)) {
		FUNC2(rtlpriv, COMP_RF, DBG_DMESG,
			 "GPIOChangeRF  - HW Radio OFF, RF OFF\n");

		e_rfpowerstate_toset = ERFOFF;
		ppsc->hwradiooff = true;
		b_actuallyset = true;
	}

	if (b_actuallyset) {
		FUNC7(&rtlpriv->locks.rf_ps_lock);
		ppsc->rfchange_inprogress = false;
		FUNC8(&rtlpriv->locks.rf_ps_lock);
	} else {
		if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC)
			FUNC1(ppsc, RT_RF_OFF_LEVL_HALT_NIC);

		FUNC7(&rtlpriv->locks.rf_ps_lock);
		ppsc->rfchange_inprogress = false;
		FUNC8(&rtlpriv->locks.rf_ps_lock);
	}

	*valid = 1;
	return !ppsc->hwradiooff;

}