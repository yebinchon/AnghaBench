#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_SEC ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(struct ieee80211_hw *hw, u32 wait_ms)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	int i;

	for (i = 0; i < wait_ms; i++) {
		if (FUNC1(hw))
			break;
		FUNC3(1000, 2000);
		FUNC0(rtlpriv, COMP_SEC, DBG_DMESG,
			 "Wait 1ms (%d/%d) to disable key.\n", i, wait_ms);
	}
}