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
struct TYPE_2__ {int /*<<< orphan*/  c2hcmd_wq; int /*<<< orphan*/  fwevt_wq; int /*<<< orphan*/  ps_rfon_wq; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  ips_nic_off_wq; int /*<<< orphan*/  watchdog_wq; int /*<<< orphan*/  watchdog_timer; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

void FUNC4(struct ieee80211_hw *hw, bool ips_wq)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);

	FUNC2(&rtlpriv->works.watchdog_timer);

	FUNC1(&rtlpriv->works.watchdog_wq);
	if (ips_wq)
		FUNC0(&rtlpriv->works.ips_nic_off_wq);
	else
		FUNC1(&rtlpriv->works.ips_nic_off_wq);
	FUNC1(&rtlpriv->works.ps_work);
	FUNC1(&rtlpriv->works.ps_rfon_wq);
	FUNC1(&rtlpriv->works.fwevt_wq);
	FUNC1(&rtlpriv->works.c2hcmd_wq);
}