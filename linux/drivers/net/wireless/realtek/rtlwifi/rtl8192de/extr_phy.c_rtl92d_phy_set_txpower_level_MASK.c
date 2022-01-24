#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ current_bandtype; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct rtl_efuse {int /*<<< orphan*/  txpwr_fromeprom; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

void FUNC7(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_efuse *rtlefuse = FUNC5(FUNC6(hw));
	struct rtl_priv *rtlpriv = FUNC6(hw);
	u8 cckpowerlevel[2], ofdmpowerlevel[2];

	if (!rtlefuse->txpwr_fromeprom)
		return;
	channel = FUNC0(channel);
	FUNC2(hw, channel, &cckpowerlevel[0],
		&ofdmpowerlevel[0]);
	if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G)
		FUNC1(hw, channel, &cckpowerlevel[0],
				&ofdmpowerlevel[0]);
	if (rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G)
		FUNC3(hw, &cckpowerlevel[0]);
	FUNC4(hw, &ofdmpowerlevel[0], channel);
}