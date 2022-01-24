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
 int /*<<< orphan*/  TDMA_2ANT ; 
 int /*<<< orphan*/  TDMA_DAC_SWING_OFF ; 
 int /*<<< orphan*/  TDMA_NAV_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int,int) ; 

void FUNC10(struct ieee80211_hw *hw)
{
	FUNC6(hw, false);
	FUNC1(hw, 0x0, 0x0, 0x0, 0x8, 0x0);
	FUNC0(hw, false, false);
	FUNC8(hw, false, TDMA_2ANT,
					    TDMA_NAV_OFF);
	FUNC7(hw, false, TDMA_2ANT, TDMA_NAV_OFF,
					TDMA_DAC_SWING_OFF);
	FUNC4(hw, 0);
	FUNC2(hw, false);
	FUNC3(hw, 2);
	FUNC9(hw, 0x10, 0x10);
	FUNC5(hw, false);
}