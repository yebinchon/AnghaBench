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
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int /*<<< orphan*/  txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_POWER ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

void FUNC7(struct ieee80211_hw *hw, u8	channel)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_efuse *rtlefuse = FUNC5(FUNC6(hw));
	/* [0]:RF-A, [1]:RF-B */
	u8 cckpowerlevel[2], ofdmpowerlevel[2];

	if (!rtlefuse->txpwr_fromeprom)
		return;

	/* Mainly we use RF-A Tx Power to write the Tx Power registers,
	 * but the RF-B Tx Power must be calculated by the antenna diff.
	 * So we have to rewrite Antenna gain offset register here.
	 * Please refer to BB register 0x80c
	 * 1. For CCK.
	 * 2. For OFDM 1T or 2T */
	FUNC2(hw, channel, &cckpowerlevel[0],
			&ofdmpowerlevel[0]);

	FUNC0(rtlpriv, COMP_POWER, DBG_LOUD,
		 "Channel-%d, cckPowerLevel (A / B) = 0x%x / 0x%x, ofdmPowerLevel (A / B) = 0x%x / 0x%x\n",
		 channel, cckpowerlevel[0], cckpowerlevel[1],
		 ofdmpowerlevel[0], ofdmpowerlevel[1]);

	FUNC1(hw, channel, &cckpowerlevel[0],
			&ofdmpowerlevel[0]);

	FUNC3(hw, cckpowerlevel[0]);
	FUNC4(hw, &ofdmpowerlevel[0], channel);

}