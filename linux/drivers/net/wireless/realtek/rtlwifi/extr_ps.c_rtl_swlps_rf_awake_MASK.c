#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtl_ps_ctl {int reg_rfps_level; } ;
struct TYPE_5__ {int /*<<< orphan*/  lps_mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  swctrl_lps; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_1__* intf_ops; TYPE_3__ psc; } ;
struct rtl_mac {scalar_t__ link_state; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disable_aspm ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERFON ; 
 scalar_t__ MAC80211_LINKED ; 
 int /*<<< orphan*/  RF_CHANGE_BY_PS ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_PS_LEVEL_ASPM ; 
 int RT_RF_LPS_LEVEL_ASPM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rtl_mac* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_ps_ctl* FUNC7 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 

void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_ps_ctl *ppsc = FUNC7(FUNC5(hw));
	struct rtl_mac *mac = FUNC4(FUNC5(hw));

	if (!rtlpriv->psc.swctrl_lps)
		return;
	if (mac->link_state != MAC80211_LINKED)
		return;

	if (ppsc->reg_rfps_level & RT_RF_LPS_LEVEL_ASPM &&
	    FUNC1(ppsc, RT_PS_LEVEL_ASPM)) {
		rtlpriv->intf_ops->disable_aspm(hw);
		FUNC0(ppsc, RT_PS_LEVEL_ASPM);
	}

	FUNC2(&rtlpriv->locks.lps_mutex);
	FUNC6(hw, ERFON, RF_CHANGE_BY_PS);
	FUNC3(&rtlpriv->locks.lps_mutex);
}