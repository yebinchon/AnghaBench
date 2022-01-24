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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_AGCTABLE_OFF ; 
 int /*<<< orphan*/  BT_BB_BACKOFF_OFF ; 
 int /*<<< orphan*/  BT_RF_RX_LPF_CORNER_RESUME ; 
 int /*<<< orphan*/  BT_TX_RATE_ADAPTIVE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	FUNC1(hw, BT_AGCTABLE_OFF);
	FUNC2(hw, BT_BB_BACKOFF_OFF);
	FUNC3(hw, false);

	FUNC0(hw, BT_TX_RATE_ADAPTIVE_NORMAL);
	FUNC5(hw, BT_RF_RX_LPF_CORNER_RESUME);
	FUNC4(hw, false, 0xc0);
}