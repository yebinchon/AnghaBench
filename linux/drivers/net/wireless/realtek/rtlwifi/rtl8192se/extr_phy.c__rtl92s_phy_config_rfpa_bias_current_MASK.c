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
typedef  scalar_t__ u32 ;
struct rtl_hal {scalar_t__ ic_class; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 scalar_t__ IC_INFERIORITY_A ; 
 int /*<<< orphan*/  RF_IPA ; 
 scalar_t__ FUNC0 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC4(struct ieee80211_hw *hw,
						 enum radio_path rfpath)
{
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	bool rtstatus = true;
	u32 tmpval = 0;

	/* If inferiority IC, we have to increase the PA bias current */
	if (rtlhal->ic_class != IC_INFERIORITY_A) {
		tmpval = FUNC0(hw, rfpath, RF_IPA, 0xf);
		FUNC1(hw, rfpath, RF_IPA, 0xf, tmpval + 1);
	}

	return rtstatus;
}