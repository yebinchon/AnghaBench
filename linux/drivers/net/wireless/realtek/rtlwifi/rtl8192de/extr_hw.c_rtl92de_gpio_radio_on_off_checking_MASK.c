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
struct rtl_ps_ctl {int rfchange_inprogress; int hwradiooff; int reg_rfps_level; scalar_t__ swrf_processing; } ;
struct TYPE_2__ {int /*<<< orphan*/  rf_ps_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct rtl_pci {scalar_t__ being_init_adapter; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int ERFOFF ; 
 int ERFON ; 
 int /*<<< orphan*/  REG_GPIO_IO_SEL ; 
 int /*<<< orphan*/  REG_MAC_PINMUX_CFG ; 
 int RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 
 int FUNC7 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC11(struct ieee80211_hw *hw, u8 *valid)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
	enum rf_pwrstate e_rfpowerstate_toset;
	u8 u1tmp;
	bool actuallyset = false;
	unsigned long flag;

	if (rtlpci->being_init_adapter)
		return false;
	if (ppsc->swrf_processing)
		return false;
	FUNC9(&rtlpriv->locks.rf_ps_lock, flag);
	if (ppsc->rfchange_inprogress) {
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
		return false;
	} else {
		ppsc->rfchange_inprogress = true;
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
	}
	FUNC8(rtlpriv, REG_MAC_PINMUX_CFG, FUNC7(rtlpriv,
			  REG_MAC_PINMUX_CFG) & ~(FUNC0(3)));
	u1tmp = FUNC7(rtlpriv, REG_GPIO_IO_SEL);
	e_rfpowerstate_toset = (u1tmp & FUNC0(3)) ? ERFON : ERFOFF;
	if (ppsc->hwradiooff && (e_rfpowerstate_toset == ERFON)) {
		FUNC2(rtlpriv, COMP_RF, DBG_DMESG,
			 "GPIOChangeRF  - HW Radio ON, RF ON\n");
		e_rfpowerstate_toset = ERFON;
		ppsc->hwradiooff = false;
		actuallyset = true;
	} else if (!ppsc->hwradiooff && (e_rfpowerstate_toset == ERFOFF)) {
		FUNC2(rtlpriv, COMP_RF, DBG_DMESG,
			 "GPIOChangeRF  - HW Radio OFF, RF OFF\n");
		e_rfpowerstate_toset = ERFOFF;
		ppsc->hwradiooff = true;
		actuallyset = true;
	}
	if (actuallyset) {
		FUNC9(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
	} else {
		if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC)
			FUNC1(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
		FUNC9(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
	}
	*valid = 1;
	return !ppsc->hwradiooff;
}