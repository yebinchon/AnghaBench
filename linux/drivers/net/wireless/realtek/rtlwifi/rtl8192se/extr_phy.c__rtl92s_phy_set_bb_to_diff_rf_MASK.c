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
struct rtl_phy {scalar_t__ rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BASEBAND_CONFIG_PHY_REG ; 
 int PHY_CHANGETO_1T1RARRAYLENGTH ; 
 int PHY_CHANGETO_1T2RARRAYLENGTH ; 
 scalar_t__ RF_1T1R ; 
 scalar_t__ RF_1T2R ; 
 int /*<<< orphan*/ * rtl8192sephy_changeto_1t1rarray ; 
 int /*<<< orphan*/ * rtl8192sephy_changeto_1t2rarray ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw,
					  u8 configtype)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	u32 *phy_regarray2xtxr_table;
	u16 phy_regarray2xtxr_len;
	int i;

	if (rtlphy->rf_type == RF_1T1R) {
		phy_regarray2xtxr_table = rtl8192sephy_changeto_1t1rarray;
		phy_regarray2xtxr_len = PHY_CHANGETO_1T1RARRAYLENGTH;
	} else if (rtlphy->rf_type == RF_1T2R) {
		phy_regarray2xtxr_table = rtl8192sephy_changeto_1t2rarray;
		phy_regarray2xtxr_len = PHY_CHANGETO_1T2RARRAYLENGTH;
	} else {
		return false;
	}

	if (configtype == BASEBAND_CONFIG_PHY_REG) {
		for (i = 0; i < phy_regarray2xtxr_len; i = i + 3) {
			FUNC1(phy_regarray2xtxr_table[i]);

			FUNC0(hw, phy_regarray2xtxr_table[i],
				phy_regarray2xtxr_table[i + 1],
				phy_regarray2xtxr_table[i + 2]);
		}
	}

	return true;
}