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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dm_type; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_BIT_IGI_11N ; 
 int /*<<< orphan*/  DM_REG_IGI_A_11N ; 
 int /*<<< orphan*/  DM_TYPE_BYDRIVER ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 

void FUNC8(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	u32 cur_igvalue = FUNC6(hw, DM_REG_IGI_A_11N, DM_BIT_IGI_11N);

	rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;

	FUNC5(hw, cur_igvalue);
	FUNC3(hw);
	FUNC2(hw);
	FUNC1(hw);
	FUNC4(hw);
	FUNC0(hw);
}