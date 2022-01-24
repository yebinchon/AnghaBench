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
struct rtl_phy {int* rfreg_chnlval; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
#define  HT_CHANNEL_WIDTH_20 129 
#define  HT_CHANNEL_WIDTH_20_40 128 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ieee80211_hw *hw, u8 bandwidth)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);

	switch (bandwidth) {
	case HT_CHANNEL_WIDTH_20:
		rtlphy->rfreg_chnlval[0] = ((rtlphy->rfreg_chnlval[0] &
					   0xfffff3ff) | 0x0400);
		FUNC2(hw, RF90_PATH_A, RF_CHNLBW, RFREG_OFFSET_MASK,
					rtlphy->rfreg_chnlval[0]);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		rtlphy->rfreg_chnlval[0] = ((rtlphy->rfreg_chnlval[0] &
					    0xfffff3ff));
		FUNC2(hw, RF90_PATH_A, RF_CHNLBW, RFREG_OFFSET_MASK,
					rtlphy->rfreg_chnlval[0]);
		break;
	default:
		FUNC0("unknown bandwidth: %#X\n", bandwidth);
		break;
	}
}