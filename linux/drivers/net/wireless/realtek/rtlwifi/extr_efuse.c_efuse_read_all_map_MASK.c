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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 size_t EFUSE_HWSET_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw, u8 *efuse)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC0(hw, false, true);
	FUNC1(hw, 0, rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE], efuse);
	FUNC0(hw, false, false);
}