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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BASEBAND_CONFIG_PHY_REG ; 
 int PHY_REG_ARRAY_PGLENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rtl8192sephy_reg_array_pg ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw,
					  u8 configtype)
{
	int i;
	u32 *phy_table_pg;
	u16 phy_pg_len;

	phy_pg_len = PHY_REG_ARRAY_PGLENGTH;
	phy_table_pg = rtl8192sephy_reg_array_pg;

	if (configtype == BASEBAND_CONFIG_PHY_REG) {
		for (i = 0; i < phy_pg_len; i = i + 3) {
			FUNC2(phy_table_pg[i]);

			FUNC0(hw,
					phy_table_pg[i],
					phy_table_pg[i + 1],
					phy_table_pg[i + 2]);
			FUNC1(hw, phy_table_pg[i],
					phy_table_pg[i + 1],
					phy_table_pg[i + 2]);
		}
	}

	return true;
}