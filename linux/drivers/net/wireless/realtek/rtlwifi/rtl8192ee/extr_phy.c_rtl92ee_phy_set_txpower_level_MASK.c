#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct rtl_phy {int num_total_rfpath; } ;
struct rtl_efuse {int /*<<< orphan*/  txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_3__ {struct rtl_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCK ; 
 int /*<<< orphan*/  HT_MCS0_MCS7 ; 
 int /*<<< orphan*/  HT_MCS8_MCS15 ; 
 int /*<<< orphan*/  OFDM ; 
 int RF90_PATH_A ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct ieee80211_hw*) ; 

void FUNC3(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_efuse *rtlefuse = FUNC1(FUNC2(hw));
	struct rtl_phy *rtlphy = &FUNC2(hw)->phy;
	enum radio_path rfpath;

	if (!rtlefuse->txpwr_fromeprom)
		return;
	for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
	     rfpath++) {
		FUNC0(hw, rfpath,
						      channel, CCK);
		FUNC0(hw, rfpath,
						      channel, OFDM);
		FUNC0(hw, rfpath,
						      channel,
						      HT_MCS0_MCS7);

		if (rtlphy->num_total_rfpath >= 2)
			FUNC0(hw,
							      rfpath, channel,
							      HT_MCS8_MCS15);
	}
}