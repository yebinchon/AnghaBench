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
struct ieee80211_hw {int dummy; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* get_hw_reg ) (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ ERFON ; 
 int /*<<< orphan*/  HW_VAR_FWLPS_RF_ON ; 
 int /*<<< orphan*/  HW_VAR_FW_PSMODE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
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
 struct rtl_priv* FUNC11 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC12 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC17(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC11(hw);
	struct rtl_ps_ctl *ppsc = FUNC12(FUNC11(hw));
	bool fw_current_inpsmode = false;
	bool fw_ps_awake = true;

	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
				      (u8 *)(&fw_current_inpsmode));

	rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FWLPS_RF_ON,
				      (u8 *)(&fw_ps_awake));

	if (ppsc->p2p_ps_info.p2p_ps_mode)
		fw_ps_awake = false;

	FUNC13(&rtlpriv->locks.rf_ps_lock);
	if ((ppsc->rfpwr_state == ERFON) &&
		((!fw_current_inpsmode) && fw_ps_awake) &&
		(!ppsc->rfchange_inprogress)) {
		FUNC4(hw);
		FUNC9(hw);
		FUNC2(hw);
		FUNC5(hw);
		FUNC7(hw);
		FUNC0(hw);
		FUNC10(hw);
		FUNC1(hw);
		FUNC6(hw);
		FUNC3(hw);
		FUNC8(hw);
	}
	FUNC14(&rtlpriv->locks.rf_ps_lock);
	rtlpriv->dm.dbginfo.num_qry_beacon_pkt = 0;
}