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
struct rtl_dm {int /*<<< orphan*/  thermalvalue_iqk; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int) ; 
 struct rtl_dm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 

void FUNC3(struct ieee80211_hw *hw, u8 delta_thermal_index,
		      u8 thermal_value, u8 threshold)
{
	struct rtl_dm	*rtldm = FUNC1(FUNC2(hw));

	rtldm->thermalvalue_iqk = thermal_value;
	FUNC0(hw, false);
}