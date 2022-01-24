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
typedef  size_t u32 ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {int /*<<< orphan*/ * antsel_a; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 struct rtl_dm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_hw *hw,
					u8 *pdesc, u32 mac_id)
{
	struct rtl_efuse *rtlefuse = FUNC1(FUNC3(hw));
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));
	struct rtl_dm *rtldm = FUNC0(FUNC3(hw));
	struct fast_ant_training *pfat_table = &rtldm->fat_table;
	__le32 *pdesc32 = (__le32 *)pdesc;

	if (rtlhal->hw_type != HARDWARE_TYPE_RTL8812AE)
		return;

	if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV)
		FUNC4(pdesc32, pfat_table->antsel_a[mac_id]);
}