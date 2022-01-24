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
typedef  int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; int rfpwr_state; int hwradiooff; int reg_rfps_level; scalar_t__ pwrdown_mode; scalar_t__ swrf_processing; } ;
struct TYPE_2__ {int /*<<< orphan*/  rf_ps_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int ERFOFF ; 
 int ERFON ; 
 int /*<<< orphan*/  REG_APS_FSMCO ; 
 int /*<<< orphan*/  REG_GPIO_IO_SEL ; 
 int /*<<< orphan*/  REG_HSISR ; 
 int /*<<< orphan*/  REG_MAC_PINMUX_CFG ; 
 int /*<<< orphan*/  REG_RSV_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int) ; 
 scalar_t__ FUNC2 (struct rtl_ps_ctl*,int) ; 
 int RT_RF_OFF_LEVL_ASPM ; 
 int RT_RF_OFF_LEVL_PCI_D3 ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 
 int FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC12(struct ieee80211_hw *hw, u8 * valid)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	enum rf_pwrstate e_rfpowerstate_toset, cur_rfstate;
	u8 u1tmp = 0;
	bool actuallyset = false;
	unsigned long flag = 0;
	/* to do - usb autosuspend */
	u8 usb_autosuspend = 0;

	if (ppsc->swrf_processing)
		return false;
	FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
	if (ppsc->rfchange_inprogress) {
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);
		return false;
	} else {
		ppsc->rfchange_inprogress = true;
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);
	}
	cur_rfstate = ppsc->rfpwr_state;
	if (usb_autosuspend) {
		/* to do................... */
	} else {
		if (ppsc->pwrdown_mode) {
			u1tmp = FUNC7(rtlpriv, REG_HSISR);
			e_rfpowerstate_toset = (u1tmp & FUNC0(7)) ?
					       ERFOFF : ERFON;
			FUNC4(rtlpriv, COMP_POWER, DBG_DMESG,
				 "pwrdown, 0x5c(BIT7)=%02x\n", u1tmp);
		} else {
			FUNC8(rtlpriv, REG_MAC_PINMUX_CFG,
				       FUNC7(rtlpriv,
				       REG_MAC_PINMUX_CFG) & ~(FUNC0(3)));
			u1tmp = FUNC7(rtlpriv, REG_GPIO_IO_SEL);
			e_rfpowerstate_toset  = (u1tmp & FUNC0(3)) ?
						 ERFON : ERFOFF;
			FUNC4(rtlpriv, COMP_POWER, DBG_DMESG,
				 "GPIO_IN=%02x\n", u1tmp);
		}
		FUNC4(rtlpriv, COMP_POWER, DBG_LOUD, "N-SS RF =%x\n",
			 e_rfpowerstate_toset);
	}
	if ((ppsc->hwradiooff) && (e_rfpowerstate_toset == ERFON)) {
		FUNC4(rtlpriv, COMP_POWER, DBG_LOUD,
			 "GPIOChangeRF  - HW Radio ON, RF ON\n");
		ppsc->hwradiooff = false;
		actuallyset = true;
	} else if ((!ppsc->hwradiooff) && (e_rfpowerstate_toset  ==
		    ERFOFF)) {
		FUNC4(rtlpriv, COMP_POWER, DBG_LOUD,
			 "GPIOChangeRF  - HW Radio OFF\n");
		ppsc->hwradiooff = true;
		actuallyset = true;
	} else {
		FUNC4(rtlpriv, COMP_POWER, DBG_LOUD,
			 "pHalData->bHwRadioOff and eRfPowerStateToSet do not match: pHalData->bHwRadioOff %x, eRfPowerStateToSet %x\n",
			 ppsc->hwradiooff, e_rfpowerstate_toset);
	}
	if (actuallyset) {
		ppsc->hwradiooff = true;
		if (e_rfpowerstate_toset == ERFON) {
			if ((ppsc->reg_rfps_level  & RT_RF_OFF_LEVL_ASPM) &&
			     FUNC2(ppsc, RT_RF_OFF_LEVL_ASPM))
				FUNC1(ppsc, RT_RF_OFF_LEVL_ASPM);
			else if ((ppsc->reg_rfps_level  & RT_RF_OFF_LEVL_PCI_D3)
				 && FUNC2(ppsc, RT_RF_OFF_LEVL_PCI_D3))
				FUNC1(ppsc, RT_RF_OFF_LEVL_PCI_D3);
		}
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);
		/* For power down module, we need to enable register block
		 * contrl reg at 0x1c. Then enable power down control bit
		 * of register 0x04 BIT4 and BIT15 as 1.
		 */
		if (ppsc->pwrdown_mode && e_rfpowerstate_toset == ERFOFF) {
			/* Enable register area 0x0-0xc. */
			FUNC8(rtlpriv, REG_RSV_CTRL, 0x0);
			FUNC9(rtlpriv, REG_APS_FSMCO, 0x8812);
		}
		if (e_rfpowerstate_toset == ERFOFF) {
			if (ppsc->reg_rfps_level  & RT_RF_OFF_LEVL_ASPM)
				FUNC3(ppsc, RT_RF_OFF_LEVL_ASPM);
			else if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_PCI_D3)
				FUNC3(ppsc, RT_RF_OFF_LEVL_PCI_D3);
		}
	} else if (e_rfpowerstate_toset == ERFOFF || cur_rfstate == ERFOFF) {
		/* Enter D3 or ASPM after GPIO had been done. */
		if (ppsc->reg_rfps_level  & RT_RF_OFF_LEVL_ASPM)
			FUNC3(ppsc, RT_RF_OFF_LEVL_ASPM);
		else if (ppsc->reg_rfps_level  & RT_RF_OFF_LEVL_PCI_D3)
			FUNC3(ppsc, RT_RF_OFF_LEVL_PCI_D3);
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);
	} else {
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);
	}
	*valid = 1;
	return !ppsc->hwradiooff;
}