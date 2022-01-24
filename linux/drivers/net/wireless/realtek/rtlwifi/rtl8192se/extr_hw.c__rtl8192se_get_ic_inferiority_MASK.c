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
struct rtl_hal {int /*<<< orphan*/  ic_class; } ;
struct rtl_efuse {scalar_t__ epromtype; int /*<<< orphan*/  autoload_failflag; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ EEPROM_BOOT_EFUSE ; 
 int /*<<< orphan*/  EFUSE_IC_ID_OFFSET ; 
 int /*<<< orphan*/  IC_INFERIORITY_A ; 
 int /*<<< orphan*/  IC_INFERIORITY_B ; 
 int FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_efuse *rtlefuse = FUNC1(FUNC3(hw));
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	u8 efuse_id;

	rtlhal->ic_class = IC_INFERIORITY_A;

	/* Only retrieving while using EFUSE. */
	if ((rtlefuse->epromtype == EEPROM_BOOT_EFUSE) &&
		!rtlefuse->autoload_failflag) {
		efuse_id = FUNC0(hw, EFUSE_IC_ID_OFFSET);

		if (efuse_id == 0xfe)
			rtlhal->ic_class = IC_INFERIORITY_B;
	}
}