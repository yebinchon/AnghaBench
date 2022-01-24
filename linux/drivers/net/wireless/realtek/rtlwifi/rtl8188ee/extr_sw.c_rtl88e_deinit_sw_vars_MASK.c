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
struct TYPE_6__ {int /*<<< orphan*/  fast_antenna_training_timer; int /*<<< orphan*/  fw_clockoff_timer; } ;
struct TYPE_5__ {scalar_t__ low_power_enable; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pfirmware; } ;
struct rtl_priv {TYPE_3__ works; TYPE_2__ psc; TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	if (rtlpriv->rtlhal.pfirmware) {
		FUNC2(rtlpriv->rtlhal.pfirmware);
		rtlpriv->rtlhal.pfirmware = NULL;
	}

	if (rtlpriv->psc.low_power_enable)
		FUNC0(&rtlpriv->works.fw_clockoff_timer);

	FUNC0(&rtlpriv->works.fast_antenna_training_timer);
}