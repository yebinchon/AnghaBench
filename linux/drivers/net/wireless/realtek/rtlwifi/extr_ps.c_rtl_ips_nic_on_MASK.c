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
struct rtl_ps_ctl {int rfpwr_state; scalar_t__ rfoff_reason; int inactive_pwrstate; int in_powersavemode; int /*<<< orphan*/  swrf_processing; scalar_t__ inactiveps; } ;
struct TYPE_12__ {int /*<<< orphan*/  ips_mutex; } ;
struct TYPE_11__ {TYPE_4__* btc_ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  ips_nic_off_wq; } ;
struct rtl_priv {TYPE_6__ locks; TYPE_5__ btcoexist; TYPE_3__* cfg; TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_10__ {int /*<<< orphan*/  (* btc_ips_notify ) (struct rtl_priv*,int) ;} ;
struct TYPE_9__ {TYPE_2__* ops; } ;
struct TYPE_8__ {scalar_t__ (* get_btc_status ) () ;} ;

/* Variables and functions */
 int ERFON ; 
 scalar_t__ RF_CHANGE_BY_IPS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC5 (struct rtl_priv*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int) ; 

void FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_ps_ctl *ppsc = FUNC5(FUNC4(hw));
	enum rf_pwrstate rtstate;

	FUNC1(&rtlpriv->works.ips_nic_off_wq);

	FUNC2(&rtlpriv->locks.ips_mutex);
	if (ppsc->inactiveps) {
		rtstate = ppsc->rfpwr_state;

		if (rtstate != ERFON &&
		    !ppsc->swrf_processing &&
		    ppsc->rfoff_reason <= RF_CHANGE_BY_IPS) {

			ppsc->inactive_pwrstate = ERFON;
			ppsc->in_powersavemode = false;
			FUNC0(hw);
			/* call after RF on */
			if (rtlpriv->cfg->ops->get_btc_status())
				rtlpriv->btcoexist.btc_ops->btc_ips_notify(rtlpriv,
									ppsc->inactive_pwrstate);
		}
	}
	FUNC3(&rtlpriv->locks.ips_mutex);
}