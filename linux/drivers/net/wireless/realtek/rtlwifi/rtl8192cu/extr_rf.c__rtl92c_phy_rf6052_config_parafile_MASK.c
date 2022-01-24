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
typedef  size_t u8 ;
typedef  int u32 ;
struct rtl_phy {size_t num_total_rfpath; struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int /*<<< orphan*/  rfintfs; int /*<<< orphan*/  rfhssi_para2; int /*<<< orphan*/  rfintfo; int /*<<< orphan*/  rfintfe; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int B3WIREADDREAALENGTH ; 
 int B3WIREDATALENGTH ; 
 int BRFSI_RFENV ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_TRACE ; 
#define  RF90_PATH_A 131 
#define  RF90_PATH_B 130 
#define  RF90_PATH_C 129 
#define  RF90_PATH_D 128 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct ieee80211_hw*,int) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	u32 u4_regvalue = 0;
	u8 rfpath;
	bool rtstatus = true;
	struct bb_reg_def *pphyreg;

	for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
		pphyreg = &rtlphy->phyreg_def[rfpath];
		switch (rfpath) {
		case RF90_PATH_A:
		case RF90_PATH_C:
			u4_regvalue = FUNC2(hw, pphyreg->rfintfs,
						    BRFSI_RFENV);
			break;
		case RF90_PATH_B:
		case RF90_PATH_D:
			u4_regvalue = FUNC2(hw, pphyreg->rfintfs,
						    BRFSI_RFENV << 16);
			break;
		}
		FUNC4(hw, pphyreg->rfintfe, BRFSI_RFENV << 16, 0x1);
		FUNC5(1);
		FUNC4(hw, pphyreg->rfintfo, BRFSI_RFENV, 0x1);
		FUNC5(1);
		FUNC4(hw, pphyreg->rfhssi_para2,
			      B3WIREADDREAALENGTH, 0x0);
		FUNC5(1);
		FUNC4(hw, pphyreg->rfhssi_para2, B3WIREDATALENGTH, 0x0);
		FUNC5(1);
		switch (rfpath) {
		case RF90_PATH_A:
		case RF90_PATH_B:
			rtstatus = FUNC1(hw,
					(enum radio_path) rfpath);
			break;
		case RF90_PATH_C:
			break;
		case RF90_PATH_D:
			break;
		}
		switch (rfpath) {
		case RF90_PATH_A:
		case RF90_PATH_C:
			FUNC4(hw, pphyreg->rfintfs,
				      BRFSI_RFENV, u4_regvalue);
			break;
		case RF90_PATH_B:
		case RF90_PATH_D:
			FUNC4(hw, pphyreg->rfintfs,
				      BRFSI_RFENV << 16, u4_regvalue);
			break;
		}
		if (!rtstatus) {
			FUNC0(rtlpriv, COMP_INIT, DBG_TRACE,
				 "Radio[%d] Fail!!\n", rfpath);
			goto phy_rf_cfg_fail;
		}
	}
	FUNC0(rtlpriv, COMP_INIT, DBG_TRACE, "<---\n");
phy_rf_cfg_fail:
	return rtstatus;
}