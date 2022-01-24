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
struct rtl_pci {int up_first_time; scalar_t__ being_init_adapter; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int ERFOFF ; 
 int ERFON ; 
 scalar_t__ FUNC0 (struct rtl_ps_ctl*,int) ; 
 int RT_RF_OFF_LEVL_HALT_NIC ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_ps_ctl*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_pci* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC9 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC12(struct ieee80211_hw *hw, u8 *valid)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct rtl_ps_ctl *ppsc = FUNC9(FUNC8(hw));
	struct rtl_pci *rtlpci = FUNC6(FUNC7(hw));
	enum rf_pwrstate rfpwr_toset /*, cur_rfstate */;
	unsigned long flag = 0;
	bool actuallyset = false;
	bool turnonbypowerdomain = false;

	/* just 8191se can check gpio before firstup, 92c/92d have fixed it */
	if ((rtlpci->up_first_time == 1) || (rtlpci->being_init_adapter))
		return false;

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

	/* cur_rfstate = ppsc->rfpwr_state;*/

	/* because after _rtl92s_phy_set_rfhalt, all power
	 * closed, so we must open some power for GPIO check,
	 * or we will always check GPIO RFOFF here,
	 * And we should close power after GPIO check */
	if (FUNC0(ppsc, RT_RF_OFF_LEVL_HALT_NIC)) {
		FUNC4(hw);
		turnonbypowerdomain = true;
	}

	rfpwr_toset = FUNC5(hw);

	if ((ppsc->hwradiooff) && (rfpwr_toset == ERFON)) {
		FUNC2(rtlpriv, COMP_RF, DBG_DMESG,
			 "RFKILL-HW Radio ON, RF ON\n");

		rfpwr_toset = ERFON;
		ppsc->hwradiooff = false;
		actuallyset = true;
	} else if ((!ppsc->hwradiooff) && (rfpwr_toset == ERFOFF)) {
		FUNC2(rtlpriv, COMP_RF,
			 DBG_DMESG, "RFKILL-HW Radio OFF, RF OFF\n");

		rfpwr_toset = ERFOFF;
		ppsc->hwradiooff = true;
		actuallyset = true;
	}

	if (actuallyset) {
		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);

	/* this not include ifconfig wlan0 down case */
	/* } else if (rfpwr_toset == ERFOFF || cur_rfstate == ERFOFF) { */
	} else {
		/* because power_domain_init may be happen when
		 * _rtl92s_phy_set_rfhalt, this will open some powers
		 * and cause current increasing about 40 mA for ips,
		 * rfoff and ifconfig down, so we set
		 * _rtl92s_phy_set_rfhalt again here */
		if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_HALT_NIC &&
			turnonbypowerdomain) {
			FUNC3(hw);
			FUNC1(ppsc, RT_RF_OFF_LEVL_HALT_NIC);
		}

		FUNC10(&rtlpriv->locks.rf_ps_lock, flag);
		ppsc->rfchange_inprogress = false;
		FUNC11(&rtlpriv->locks.rf_ps_lock, flag);
	}

	*valid = 1;
	return !ppsc->hwradiooff;

}