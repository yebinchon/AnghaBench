#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {scalar_t__ p2p_ps_mode; } ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; int /*<<< orphan*/  rfchange_inprogress; TYPE_3__ p2p_ps_info; } ;
struct TYPE_11__ {scalar_t__ num_qry_beacon_pkt; } ;
struct TYPE_12__ {TYPE_5__ dbginfo; } ;
struct TYPE_10__ {int /*<<< orphan*/  rf_ps_lock; } ;
struct rtl_priv {TYPE_6__ dm; TYPE_4__ locks; TYPE_2__* cfg; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_DIG ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ ERFON ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 int /*<<< orphan*/  HW_VAR_FWLPS_RF_ON ; 
 int /*<<< orphan*/  HW_VAR_FW_PSMODE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 struct rtl_hal* FUNC13 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC14 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC15 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC20(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC14(hw);
	struct rtl_ps_ctl *ppsc = FUNC15(FUNC14(hw));
	struct rtl_hal *rtlhal = FUNC13(FUNC14(hw));
	bool fw_current_inpsmode = false;
	bool fw_ps_awake = true;

	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
				      (u8 *)(&fw_current_inpsmode));

	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FWLPS_RF_ON,
				      (u8 *)(&fw_ps_awake));

	if (ppsc->p2p_ps_info.p2p_ps_mode)
		fw_ps_awake = false;

	FUNC16(&rtlpriv->locks.rf_ps_lock);
	if ((ppsc->rfpwr_state == ERFON) &&
	    ((!fw_current_inpsmode) && fw_ps_awake) &&
	    (!ppsc->rfchange_inprogress)) {
		FUNC6(hw);
		FUNC9(hw);
		FUNC4(hw);
		FUNC7(hw);
		FUNC2(hw);
		FUNC12(hw);
		FUNC11(hw);
		FUNC3(hw);
		FUNC8(hw);
		if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
			FUNC1(hw);
		else
			FUNC5(hw);
		FUNC10(hw);
	}
	FUNC17(&rtlpriv->locks.rf_ps_lock);

	rtlpriv->dm.dbginfo.num_qry_beacon_pkt = 0;
	FUNC0(rtlpriv, COMP_DIG, DBG_DMESG, "\n");
}