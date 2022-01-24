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
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  iqk_lock; int /*<<< orphan*/  fw_ps_lock; int /*<<< orphan*/  cck_and_rw_pagea_lock; int /*<<< orphan*/  scan_list_lock; int /*<<< orphan*/  c2hcmd_lock; int /*<<< orphan*/  entry_list_lock; int /*<<< orphan*/  waitq_lock; int /*<<< orphan*/  rf_lock; int /*<<< orphan*/  rf_ps_lock; int /*<<< orphan*/  h2c_lock; int /*<<< orphan*/  irq_th_lock; int /*<<< orphan*/  lps_mutex; int /*<<< orphan*/  ips_mutex; int /*<<< orphan*/  conf_mutex; } ;
struct rtl_priv {int /*<<< orphan*/  c2hcmd_queue; TYPE_3__ tx_report; TYPE_2__ scan_list; int /*<<< orphan*/  entry_list; TYPE_1__ locks; } ;
struct rtl_mac {int /*<<< orphan*/  link_state; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {char* rate_control_algorithm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAC80211_NOLINK ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct rtl_mac* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rtl_reg_notifier ; 
 scalar_t__ FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_mac *rtlmac = FUNC5(FUNC6(hw));

	/* <1> init mac80211 */
	FUNC2(hw);
	rtlmac->hw = hw;

	/* <2> rate control register */
	hw->rate_control_algorithm = "rtl_rc";

	/*
	 * <3> init CRDA must come after init
	 * mac80211 hw  in _rtl_init_mac80211.
	 */
	if (FUNC7(hw, rtl_reg_notifier)) {
		FUNC4("REGD init failed\n");
		return 1;
	}

	/* <4> locks */
	FUNC3(&rtlpriv->locks.conf_mutex);
	FUNC3(&rtlpriv->locks.ips_mutex);
	FUNC3(&rtlpriv->locks.lps_mutex);
	FUNC9(&rtlpriv->locks.irq_th_lock);
	FUNC9(&rtlpriv->locks.h2c_lock);
	FUNC9(&rtlpriv->locks.rf_ps_lock);
	FUNC9(&rtlpriv->locks.rf_lock);
	FUNC9(&rtlpriv->locks.waitq_lock);
	FUNC9(&rtlpriv->locks.entry_list_lock);
	FUNC9(&rtlpriv->locks.c2hcmd_lock);
	FUNC9(&rtlpriv->locks.scan_list_lock);
	FUNC9(&rtlpriv->locks.cck_and_rw_pagea_lock);
	FUNC9(&rtlpriv->locks.fw_ps_lock);
	FUNC9(&rtlpriv->locks.iqk_lock);
	/* <5> init list */
	FUNC0(&rtlpriv->entry_list);
	FUNC0(&rtlpriv->scan_list.list);
	FUNC8(&rtlpriv->tx_report.queue);
	FUNC8(&rtlpriv->c2hcmd_queue);

	rtlmac->link_state = MAC80211_NOLINK;

	/* <6> init deferred work */
	FUNC1(hw);

	return 0;
}