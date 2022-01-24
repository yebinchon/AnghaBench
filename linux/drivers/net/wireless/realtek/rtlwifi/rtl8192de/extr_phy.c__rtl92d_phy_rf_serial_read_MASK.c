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
struct rtl_phy {struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int /*<<< orphan*/  rf_rb; int /*<<< orphan*/  rf_rbpi; int /*<<< orphan*/  rfhssi_para2; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BLSSIREADADDRESS ; 
 int /*<<< orphan*/  BLSSIREADBACKDATA ; 
 int BLSSIREADEDGE ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int RF90_PATH_A ; 
 int RF90_PATH_B ; 
 int /*<<< orphan*/  RFPGA0_XA_HSSIPARAMETER1 ; 
 int /*<<< orphan*/  RFPGA0_XA_HSSIPARAMETER2 ; 
 int /*<<< orphan*/  RFPGA0_XB_HSSIPARAMETER1 ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u32 FUNC6(struct ieee80211_hw *hw,
				      enum radio_path rfpath, u32 offset)
{

	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct bb_reg_def *pphyreg = &rtlphy->phyreg_def[rfpath];
	u32 newoffset;
	u32 tmplong, tmplong2;
	u8 rfpi_enable = 0;
	u32 retvalue;

	newoffset = offset;
	tmplong = FUNC2(hw, RFPGA0_XA_HSSIPARAMETER2, MASKDWORD);
	if (rfpath == RF90_PATH_A)
		tmplong2 = tmplong;
	else
		tmplong2 = FUNC2(hw, pphyreg->rfhssi_para2, MASKDWORD);
	tmplong2 = (tmplong2 & (~BLSSIREADADDRESS)) |
		(newoffset << 23) | BLSSIREADEDGE;
	FUNC4(hw, RFPGA0_XA_HSSIPARAMETER2, MASKDWORD,
		tmplong & (~BLSSIREADEDGE));
	FUNC5(10);
	FUNC4(hw, pphyreg->rfhssi_para2, MASKDWORD, tmplong2);
	FUNC5(50);
	FUNC5(50);
	FUNC4(hw, RFPGA0_XA_HSSIPARAMETER2, MASKDWORD,
		tmplong | BLSSIREADEDGE);
	FUNC5(10);
	if (rfpath == RF90_PATH_A)
		rfpi_enable = (u8) FUNC2(hw, RFPGA0_XA_HSSIPARAMETER1,
			      FUNC0(8));
	else if (rfpath == RF90_PATH_B)
		rfpi_enable = (u8) FUNC2(hw, RFPGA0_XB_HSSIPARAMETER1,
			      FUNC0(8));
	if (rfpi_enable)
		retvalue = FUNC2(hw, pphyreg->rf_rbpi,
			BLSSIREADBACKDATA);
	else
		retvalue = FUNC2(hw, pphyreg->rf_rb,
			BLSSIREADBACKDATA);
	FUNC1(rtlpriv, COMP_RF, DBG_TRACE, "RFR-%d Addr[0x%x] = 0x%x\n",
		 rfpath, pphyreg->rf_rb, retvalue);
	return retvalue;
}