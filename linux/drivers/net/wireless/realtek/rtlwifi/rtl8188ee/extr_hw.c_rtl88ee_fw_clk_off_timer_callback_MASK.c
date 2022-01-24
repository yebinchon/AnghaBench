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
struct timer_list {int dummy; } ;
struct rtl_priv {struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_clockoff_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct rtl_priv* rtlpriv ; 
 TYPE_1__ works ; 

void FUNC2(struct timer_list *t)
{
	struct rtl_priv *rtlpriv = FUNC1(rtlpriv, t,
					      works.fw_clockoff_timer);
	struct ieee80211_hw *hw = rtlpriv->hw;

	FUNC0(hw);
}