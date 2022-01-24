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
struct rtl_ps_ctl {scalar_t__ support_backdoor; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC1 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	struct rtl_ps_ctl *ppsc = FUNC1(FUNC0(hw));

	FUNC2(rtlpriv, 0x34b, 0x93);
	FUNC3(rtlpriv, 0x350, 0x870c);
	FUNC2(rtlpriv, 0x352, 0x1);
	if (ppsc->support_backdoor)
		FUNC2(rtlpriv, 0x349, 0x1b);
	else
		FUNC2(rtlpriv, 0x349, 0x03);
	FUNC3(rtlpriv, 0x350, 0x2718);
	FUNC2(rtlpriv, 0x352, 0x1);
}