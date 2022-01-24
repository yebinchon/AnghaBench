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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  HT_CHANNEL_WIDTH_20 130 
#define  HT_CHANNEL_WIDTH_20_40 129 
#define  HT_CHANNEL_WIDTH_80 128 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF90_PATH_B ; 
 int /*<<< orphan*/  RF_CHNLBW ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct ieee80211_hw *hw, u8 bandwidth)
{
	switch (bandwidth) {
	case HT_CHANNEL_WIDTH_20:
		FUNC2(hw, RF90_PATH_A, RF_CHNLBW, FUNC0(11)|FUNC0(10), 3);
		FUNC2(hw, RF90_PATH_B, RF_CHNLBW, FUNC0(11)|FUNC0(10), 3);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		FUNC2(hw, RF90_PATH_A, RF_CHNLBW, FUNC0(11)|FUNC0(10), 1);
		FUNC2(hw, RF90_PATH_B, RF_CHNLBW, FUNC0(11)|FUNC0(10), 1);
		break;
	case HT_CHANNEL_WIDTH_80:
		FUNC2(hw, RF90_PATH_A, RF_CHNLBW, FUNC0(11)|FUNC0(10), 0);
		FUNC2(hw, RF90_PATH_B, RF_CHNLBW, FUNC0(11)|FUNC0(10), 0);
		break;
	default:
		FUNC1("unknown bandwidth: %#X\n", bandwidth);
		break;
	}
}