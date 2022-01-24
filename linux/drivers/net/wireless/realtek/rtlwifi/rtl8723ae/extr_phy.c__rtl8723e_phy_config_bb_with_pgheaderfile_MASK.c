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
typedef  int u32 ;
typedef  int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BASEBAND_CONFIG_PHY_REG ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int* RTL8723EPHY_REG_ARRAY_PG ; 
 int RTL8723E_PHY_REG_ARRAY_PGLENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct ieee80211_hw *hw,
						      u8 configtype)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	int i;
	u32 *phy_regarray_table_pg;
	u16 phy_regarray_pg_len;

	phy_regarray_pg_len = RTL8723E_PHY_REG_ARRAY_PGLENGTH;
	phy_regarray_table_pg = RTL8723EPHY_REG_ARRAY_PG;

	if (configtype == BASEBAND_CONFIG_PHY_REG) {
		for (i = 0; i < phy_regarray_pg_len; i = i + 3) {
			if (phy_regarray_table_pg[i] == 0xfe)
				FUNC1(50);
			else if (phy_regarray_table_pg[i] == 0xfd)
				FUNC1(5);
			else if (phy_regarray_table_pg[i] == 0xfc)
				FUNC1(1);
			else if (phy_regarray_table_pg[i] == 0xfb)
				FUNC4(50);
			else if (phy_regarray_table_pg[i] == 0xfa)
				FUNC4(5);
			else if (phy_regarray_table_pg[i] == 0xf9)
				FUNC4(1);

			FUNC3(hw,
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