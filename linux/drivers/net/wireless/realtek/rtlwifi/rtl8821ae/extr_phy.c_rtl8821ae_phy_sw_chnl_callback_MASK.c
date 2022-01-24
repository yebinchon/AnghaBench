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
typedef  int u32 ;
struct rtl_phy {int current_channel; int num_total_rfpath; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BMASKBYTE0 ; 
 int BRFREGOFFSETMASK ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ HARDWARE_TYPE_RTL8821AE ; 
 int RF90_PATH_A ; 
 int /*<<< orphan*/  RFC_AREA ; 
 int /*<<< orphan*/  RF_APK ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int,int) ; 
 struct rtl_hal* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_hal *rtlhal = FUNC4(FUNC5(hw));
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	u8 channel = rtlphy->current_channel;
	u8 path;
	u32 data;

	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE,
		 "switch to channel%d\n", rtlphy->current_channel);
	if (FUNC2(rtlhal))
		return;

	if (36 <= channel && channel <= 48)
		data = 0x494;
	else if (50 <= channel && channel <= 64)
		data = 0x453;
	else if (100 <= channel && channel <= 116)
		data = 0x452;
	else if (118 <= channel)
		data = 0x412;
	else
		data = 0x96a;
	FUNC6(hw, RFC_AREA, 0x1ffe0000, data);

	for (path = RF90_PATH_A; path < rtlphy->num_total_rfpath; path++) {
		if (36 <= channel && channel <= 64)
			data = 0x101;
		else if (100 <= channel && channel <= 140)
			data = 0x301;
		else if (140 < channel)
			data = 0x501;
		else
			data = 0x000;
		FUNC3(hw, path, RF_CHNLBW,
			FUNC0(18)|FUNC0(17)|FUNC0(16)|FUNC0(9)|FUNC0(8), data);

		FUNC3(hw, path, RF_CHNLBW,
			BMASKBYTE0, channel);

		if (channel > 14) {
			if (rtlhal->hw_type == HARDWARE_TYPE_RTL8821AE) {
				if (36 <= channel && channel <= 64)
					data = 0x114E9;
				else if (100 <= channel && channel <= 140)
					data = 0x110E9;
				else
					data = 0x110E9;
				FUNC3(hw, path, RF_APK,
					BRFREGOFFSETMASK, data);
			}
		}
	}
	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE, "\n");
}