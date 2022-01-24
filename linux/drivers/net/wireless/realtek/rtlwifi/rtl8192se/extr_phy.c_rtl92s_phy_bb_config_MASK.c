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
typedef  int u8 ;
struct rtl_phy {int rf_pathmap; scalar_t__ rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFPGA0_TXINFO ; 
 scalar_t__ RF_1T1R ; 
 scalar_t__ RF_1T2R ; 
 scalar_t__ RF_2T2R ; 
 scalar_t__ RF_2T2R_GREEN ; 
 int /*<<< orphan*/  ROFDM0_TRXPATHENABLE ; 
 int FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,...) ; 
 scalar_t__ FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 

bool FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	bool rtstatus = true;
	u8 pathmap, index, rf_num = 0;
	u8 path1, path2;

	FUNC1(hw);

	/* Config BB and AGC */
	rtstatus = FUNC0(hw);


	/* Check BB/RF confiuration setting. */
	/* We only need to configure RF which is turned on. */
	path1 = (u8)(FUNC4(hw, RFPGA0_TXINFO, 0xf));
	FUNC2(10);
	path2 = (u8)(FUNC4(hw, ROFDM0_TRXPATHENABLE, 0xf));
	pathmap = path1 | path2;

	rtlphy->rf_pathmap = pathmap;
	for (index = 0; index < 4; index++) {
		if ((pathmap >> index) & 0x1)
			rf_num++;
	}

	if ((rtlphy->rf_type == RF_1T1R && rf_num != 1) ||
	    (rtlphy->rf_type == RF_1T2R && rf_num != 2) ||
	    (rtlphy->rf_type == RF_2T2R && rf_num != 2) ||
	    (rtlphy->rf_type == RF_2T2R_GREEN && rf_num != 2)) {
		FUNC3("RF_Type(%x) does not match RF_Num(%x)!!\n",
		       rtlphy->rf_type, rf_num);
		FUNC3("path1 0x%x, path2 0x%x, pathmap 0x%x\n",
		       path1, path2, pathmap);
	}

	return rtstatus;
}