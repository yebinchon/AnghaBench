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
struct rtl_ps_ctl {int /*<<< orphan*/  support_backdoor; scalar_t__ support_aspm; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC2 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_ps_ctl *ppsc = FUNC2(FUNC1(hw));

	/* The way to be capable to switch clock request
	 * when the PG setting does not support clock request.
	 * This is the backdoor solution to switch clock
	 * request before ASPM or D3. */
	FUNC4(rtlpriv, 0x540, 0x73c11);
	FUNC4(rtlpriv, 0x548, 0x2407c);

	/* Switch EPHY parameter!!!! */
	FUNC5(rtlpriv, 0x550, 0x1000);
	FUNC3(rtlpriv, 0x554, 0x20);
	FUNC0(hw);

	FUNC5(rtlpriv, 0x550, 0xa0eb);
	FUNC3(rtlpriv, 0x554, 0x3e);
	FUNC0(hw);

	FUNC5(rtlpriv, 0x550, 0xff80);
	FUNC3(rtlpriv, 0x554, 0x39);
	FUNC0(hw);

	/* Delay L1 enter time */
	if (ppsc->support_aspm && !ppsc->support_backdoor)
		FUNC3(rtlpriv, 0x560, 0x40);
	else
		FUNC3(rtlpriv, 0x560, 0x00);

}