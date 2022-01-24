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
 scalar_t__ BASEBAND_CONFIG_AGC_TAB ; 
 scalar_t__ BASEBAND_CONFIG_PHY_REG ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int* RTL8723EAGCTAB_1TARRAY ; 
 int* RTL8723EPHY_REG_1TARRAY ; 
 int RTL8723E_AGCTAB_1TARRAYLENGTH ; 
 int RTL8723E_PHY_REG_1TARRAY_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct ieee80211_hw *hw,
						    u8 configtype)
{
	int i;
	u32 *phy_regarray_table;
	u32 *agctab_array_table;
	u16 phy_reg_arraylen, agctab_arraylen;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	agctab_arraylen = RTL8723E_AGCTAB_1TARRAYLENGTH;
	agctab_array_table = RTL8723EAGCTAB_1TARRAY;
	phy_reg_arraylen = RTL8723E_PHY_REG_1TARRAY_LENGTH;
	phy_regarray_table = RTL8723EPHY_REG_1TARRAY;
	if (configtype == BASEBAND_CONFIG_PHY_REG) {
		for (i = 0; i < phy_reg_arraylen; i = i + 2) {
			if (phy_regarray_table[i] == 0xfe)
				FUNC1(50);
			else if (phy_regarray_table[i] == 0xfd)
				FUNC1(5);
			else if (phy_regarray_table[i] == 0xfc)
				FUNC1(1);
			else if (phy_regarray_table[i] == 0xfb)
				FUNC4(50);
			else if (phy_regarray_table[i] == 0xfa)
				FUNC4(5);
			else if (phy_regarray_table[i] == 0xf9)
				FUNC4(1);
			FUNC3(hw, phy_regarray_table[i], MASKDWORD,
				      phy_regarray_table[i + 1]);
			FUNC4(1);
			FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
				 "The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\n",
				 phy_regarray_table[i],
				 phy_regarray_table[i + 1]);
		}
	} else if (configtype == BASEBAND_CONFIG_AGC_TAB) {
		for (i = 0; i < agctab_arraylen; i = i + 2) {
			FUNC3(hw, agctab_array_table[i], MASKDWORD,
				      agctab_array_table[i + 1]);
			FUNC4(1);
			FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
				 "The agctab_array_table[0] is %x Rtl819XPHY_REGArray[1] is %x\n",
				 agctab_array_table[i],
				 agctab_array_table[i + 1]);
		}
	}
	return true;
}