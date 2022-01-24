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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BASEBAND_CONFIG_PHY_REG ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int PHY_REG_ARRAY_PG_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rtl8192de_phy_reg_array_pg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC4(struct ieee80211_hw *hw,
	u8 configtype)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	int i;
	u32 *phy_regarray_table_pg;
	u16 phy_regarray_pg_len;

	phy_regarray_pg_len = PHY_REG_ARRAY_PG_LENGTH;
	phy_regarray_table_pg = rtl8192de_phy_reg_array_pg;
	if (configtype == BASEBAND_CONFIG_PHY_REG) {
		for (i = 0; i < phy_regarray_pg_len; i = i + 3) {
			FUNC2(phy_regarray_table_pg[i]);
			FUNC1(hw,
				phy_regarray_table_pg[i],
				phy_regarray_table_pg[i + 1],
				phy_regarray_table_pg[i + 2]);
		}
	} else {
		FUNC0(rtlpriv, COMP_SEND, DBG_TRACE,
			 "configtype != BaseBand_Config_PHY_REG\n");
	}
	return true;
}