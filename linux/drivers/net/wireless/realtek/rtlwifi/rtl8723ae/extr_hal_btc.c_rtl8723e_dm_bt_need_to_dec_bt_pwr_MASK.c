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
struct TYPE_2__ {int /*<<< orphan*/  cstate; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_COEX_STATE_DEC_BT_POWER ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ RT_MEDIA_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	if (FUNC1(hw) == RT_MEDIA_CONNECT) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"Need to decrease bt power\n");
		rtlpriv->btcoexist.cstate |=
		BT_COEX_STATE_DEC_BT_POWER;
		return true;
	}

	rtlpriv->btcoexist.cstate &= ~BT_COEX_STATE_DEC_BT_POWER;
	return false;
}