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
struct TYPE_6__ {int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  watchdog_timer; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__ works; TYPE_1__* intf_ops; int /*<<< orphan*/  status; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int (* adapter_start ) (struct ieee80211_hw*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTL_STATUS_INTERFACE_START ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw)
{
	int err = 0;
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));

	if (!FUNC0(rtlhal))
		return 0;
	if (!FUNC7(RTL_STATUS_INTERFACE_START, &rtlpriv->status))
		return 0;
	FUNC1(&rtlpriv->locks.conf_mutex);
	err = rtlpriv->intf_ops->adapter_start(hw);
	if (!err)
		FUNC5(&rtlpriv->works.watchdog_timer);
	FUNC2(&rtlpriv->locks.conf_mutex);
	return err;
}