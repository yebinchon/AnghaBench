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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ RA_RFE_PINMUX ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw, bool main)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	/* struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw)); */
	/* struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw)); */
	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "\n");

	if (main)
		FUNC3(hw, RA_RFE_PINMUX + 4, FUNC0(29) | FUNC0(28), 0x1);
	else
		FUNC3(hw, RA_RFE_PINMUX + 4, FUNC0(29) | FUNC0(28), 0x2);
}