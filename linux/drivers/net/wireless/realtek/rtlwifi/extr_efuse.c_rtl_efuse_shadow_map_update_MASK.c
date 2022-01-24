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
struct rtl_priv {TYPE_1__* cfg; } ;
struct rtl_efuse {int /*<<< orphan*/ ** efuse_map; scalar_t__ autoload_failflag; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 size_t EFUSE_HWSET_MAX_SIZE ; 
 size_t EFUSE_INIT_MAP ; 
 size_t EFUSE_MODIFY_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_efuse *rtlefuse = FUNC3(FUNC4(hw));

	if (rtlefuse->autoload_failflag)
		FUNC2((&rtlefuse->efuse_map[EFUSE_INIT_MAP][0]),
		       0xFF, rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE]);
	else
		FUNC0(hw, &rtlefuse->efuse_map[EFUSE_INIT_MAP][0]);

	FUNC1(&rtlefuse->efuse_map[EFUSE_MODIFY_MAP][0],
			&rtlefuse->efuse_map[EFUSE_INIT_MAP][0],
			rtlpriv->cfg->maps[EFUSE_HWSET_MAX_SIZE]);

}