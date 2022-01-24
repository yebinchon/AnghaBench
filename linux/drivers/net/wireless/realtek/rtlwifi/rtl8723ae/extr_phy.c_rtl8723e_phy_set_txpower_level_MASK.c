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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_efuse {int txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 

void FUNC6(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_efuse *rtlefuse = FUNC4(FUNC5(hw));
	u8 cckpowerlevel[2], ofdmpowerlevel[2];

	if (rtlefuse->txpwr_fromeprom == false)
		return;
	FUNC1(hw, channel,
				    &cckpowerlevel[0], &ofdmpowerlevel[0]);
	FUNC0(hw,
				       channel, &cckpowerlevel[0],
				       &ofdmpowerlevel[0]);
	FUNC2(hw, &cckpowerlevel[0]);
	FUNC3(hw, &ofdmpowerlevel[0], channel);
}