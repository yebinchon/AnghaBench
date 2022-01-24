#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx_gain_min; int /*<<< orphan*/  rx_gain_max; } ;
struct TYPE_3__ {int /*<<< orphan*/  dm_type; } ;
struct rtl_priv {TYPE_2__ dm_digtable; TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_DIG_FA_LOWER ; 
 int /*<<< orphan*/  DM_DIG_FA_UPPER ; 
 int /*<<< orphan*/  DM_TYPE_BYDRIVER ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);

	rtlpriv->dm.dm_type = DM_TYPE_BYDRIVER;
	FUNC4(hw, 0x20);
	rtlpriv->dm_digtable.rx_gain_max = DM_DIG_FA_UPPER;
	rtlpriv->dm_digtable.rx_gain_min = DM_DIG_FA_LOWER;
	FUNC0(hw);
	FUNC1(hw);
	FUNC2(hw);
	FUNC3(hw);
}