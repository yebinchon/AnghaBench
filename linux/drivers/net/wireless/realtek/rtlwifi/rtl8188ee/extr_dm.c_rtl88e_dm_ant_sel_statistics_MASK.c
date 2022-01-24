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
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {int /*<<< orphan*/ * aux_ant_cnt; int /*<<< orphan*/ * aux_ant_sum; int /*<<< orphan*/ * main_ant_cnt; int /*<<< orphan*/ * main_ant_sum; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ CGCS_RX_HW_ANTDIV ; 
 scalar_t__ CG_TRX_HW_ANTDIV ; 
 scalar_t__ MAIN_ANT_CGCS_RX ; 
 scalar_t__ MAIN_ANT_CG_TRX ; 
 struct rtl_dm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 

void FUNC3(struct ieee80211_hw *hw,
				  u8 antsel_tr_mux, u32 mac_id,
				  u32 rx_pwdb_all)
{
	struct rtl_efuse *rtlefuse = FUNC1(FUNC2(hw));
	struct rtl_dm *rtldm = FUNC0(FUNC2(hw));
	struct fast_ant_training *pfat_table = &rtldm->fat_table;

	if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) {
		if (antsel_tr_mux == MAIN_ANT_CG_TRX) {
			pfat_table->main_ant_sum[mac_id] += rx_pwdb_all;
			pfat_table->main_ant_cnt[mac_id]++;
		} else {
			pfat_table->aux_ant_sum[mac_id] += rx_pwdb_all;
			pfat_table->aux_ant_cnt[mac_id]++;
		}
	} else if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV) {
		if (antsel_tr_mux == MAIN_ANT_CGCS_RX) {
			pfat_table->main_ant_sum[mac_id] += rx_pwdb_all;
			pfat_table->main_ant_cnt[mac_id]++;
		} else {
			pfat_table->aux_ant_sum[mac_id] += rx_pwdb_all;
			pfat_table->aux_ant_cnt[mac_id]++;
		}
	}
}