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
typedef  int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int COMP_INIT ; 
 int COMP_POWER ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 
 int FUNC4 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	u8 tmp  = 0;
	struct rtl_priv *rtlpriv = FUNC6(hw);

	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "--->\n");

	tmp = FUNC2(rtlpriv, 0x160);
	if (!(tmp & (FUNC0(2) | FUNC0(3)))) {
		FUNC1(rtlpriv, COMP_POWER | COMP_INIT, DBG_LOUD,
			 "0x160(%#x)return!!\n", tmp);
		return;
	}

	tmp = FUNC4(rtlpriv, 0x1b);
	FUNC5(rtlpriv, 0x1b, (tmp | FUNC0(4)));

	tmp = FUNC2(rtlpriv, 0x718);
	FUNC3(rtlpriv, 0x718, tmp | FUNC0(5));

	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "<---\n");
}