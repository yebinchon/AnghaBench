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
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
					     bool bmain, bool is2t)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	FUNC0(rtlpriv, COMP_INIT, DBG_LOUD, "\n");

	if (bmain) /* left antenna */
		FUNC2(hw, 0x92C, MASKDWORD, 0x1);
	else
		FUNC2(hw, 0x92C, MASKDWORD, 0x2);
}