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
struct TYPE_4__ {int /*<<< orphan*/  irq_tasklet; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* hw_disable ) (struct ieee80211_hw*) ;int /*<<< orphan*/  (* disable_interrupt ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	/*<1> Stop all timer */
	FUNC0(hw, true);

	/*<2> Disable Interrupt */
	rtlpriv->cfg->ops->disable_interrupt(hw);
	FUNC4(&rtlpriv->works.irq_tasklet);

	/*<3> Disable Adapter */
	rtlpriv->cfg->ops->hw_disable(hw);

	return true;
}