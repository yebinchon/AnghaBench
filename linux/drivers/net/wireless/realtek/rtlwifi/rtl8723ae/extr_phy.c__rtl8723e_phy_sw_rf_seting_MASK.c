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
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ HT_CHANNEL_WIDTH_20 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  RF_RX_G1 ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw, u8 channel)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));

	if (FUNC0(rtlhal->version)) {
		if (channel == 6 && rtlphy->current_chan_bw ==
				HT_CHANNEL_WIDTH_20)
			FUNC4(hw, RF90_PATH_A, RF_RX_G1,
				      MASKDWORD, 0x00255);
		else{
			u32 backuprf0x1a = (u32)FUNC1(hw,
					RF90_PATH_A, RF_RX_G1,
					RFREG_OFFSET_MASK);
			FUNC4(hw, RF90_PATH_A, RF_RX_G1,
				      MASKDWORD, backuprf0x1a);
		}
	}
}