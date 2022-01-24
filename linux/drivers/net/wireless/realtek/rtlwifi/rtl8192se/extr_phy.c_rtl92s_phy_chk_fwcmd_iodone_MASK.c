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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WFM5 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u16 pollingcnt = 10000;
	u32 tmpvalue;

	/* Make sure that CMD IO has be accepted by FW. */
	do {
		FUNC3(10);

		tmpvalue = FUNC2(rtlpriv, WFM5);
		if (tmpvalue == 0)
			break;
	} while (--pollingcnt);

	if (pollingcnt == 0)
		FUNC0("Set FW Cmd fail!!\n");
}