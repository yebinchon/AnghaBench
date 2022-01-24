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
struct TYPE_2__ {int txpower_tracking; int txpower_trackinginit; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC2(
						struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	rtlpriv->dm.txpower_tracking = true;
	rtlpriv->dm.txpower_trackinginit = false;

	FUNC0(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
		 "pMgntInfo->txpower_tracking = %d\n",
		 rtlpriv->dm.txpower_tracking);
}