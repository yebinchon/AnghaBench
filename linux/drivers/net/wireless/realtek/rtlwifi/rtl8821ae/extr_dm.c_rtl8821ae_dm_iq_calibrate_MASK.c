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
struct rtl_mac {scalar_t__ link_state; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_dm {int linked_interval; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 scalar_t__ MAC80211_LINKED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int) ; 
 struct rtl_dm* FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC3 (int /*<<< orphan*/ ) ; 
 struct rtl_mac* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_mac *mac = FUNC4(FUNC5(hw));
	struct rtl_dm *rtldm = FUNC2(FUNC5(hw));
	struct rtl_hal *rtlhal = FUNC3(FUNC5(hw));

	if (mac->link_state >= MAC80211_LINKED) {
		if (rtldm->linked_interval < 3)
			rtldm->linked_interval++;

		if (rtldm->linked_interval == 2) {
			if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE)
				FUNC0(hw, false);
			else
				FUNC1(hw, false);
		}
	} else {
		rtldm->linked_interval = 0;
	}
}