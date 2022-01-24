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
typedef  int u32 ;
struct rtl_phy {struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int /*<<< orphan*/  rf3wire_offset; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  MASKDWORD ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					enum radio_path rfpath, u32 offset,
					u32 data)
{
	u32 data_and_addr;
	u32 newoffset;
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct bb_reg_def *pphyreg = &rtlphy->phyreg_def[rfpath];

	if (FUNC0(hw)) {
		FUNC2("stop\n");
		return;
	}
	offset &= 0xff;
	newoffset = offset;
	data_and_addr = ((newoffset << 20) | (data & 0x000fffff)) & 0x0fffffff;
	FUNC4(hw, pphyreg->rf3wire_offset, MASKDWORD, data_and_addr);
	FUNC1(rtlpriv, COMP_RF, DBG_TRACE,
		 "RFW-%d Addr[0x%x]=0x%x\n",
		 rfpath, pphyreg->rf3wire_offset, data_and_addr);
}