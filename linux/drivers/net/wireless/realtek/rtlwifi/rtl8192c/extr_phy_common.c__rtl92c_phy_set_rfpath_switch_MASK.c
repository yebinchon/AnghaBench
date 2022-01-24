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
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_LEDCFG0 ; 
 int /*<<< orphan*/  RFPGA0_XAB_RFPARAMETER ; 
 int /*<<< orphan*/  RFPGA0_XA_RFINTERFACEOE ; 
 int /*<<< orphan*/  RFPGA0_XB_RFINTERFACEOE ; 
 scalar_t__ FUNC1 (struct rtl_hal*) ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					  bool bmain, bool is2t)
{
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));

	if (FUNC1(rtlhal)) {
		FUNC4(hw, REG_LEDCFG0, FUNC0(23), 0x01);
		FUNC4(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(13), 0x01);
	}
	if (is2t) {
		if (bmain)
			FUNC4(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(5) | FUNC0(6), 0x1);
		else
			FUNC4(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(5) | FUNC0(6), 0x2);
	} else {
		if (bmain)
			FUNC4(hw, RFPGA0_XA_RFINTERFACEOE, 0x300, 0x2);
		else
			FUNC4(hw, RFPGA0_XA_RFINTERFACEOE, 0x300, 0x1);
	}
}