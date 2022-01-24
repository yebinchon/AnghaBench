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
typedef  int u32 ;
struct fast_ant_training {int /*<<< orphan*/  fat_state; scalar_t__ train_idx; scalar_t__* ant_ave; scalar_t__* ant_cnt; scalar_t__* ant_sum; scalar_t__* bssid; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DM_REG_ANTDIV_PARA1_11N ; 
 int /*<<< orphan*/  DM_REG_ANTSEL_PIN_11N ; 
 int /*<<< orphan*/  DM_REG_ANT_MAPPING1_11N ; 
 int /*<<< orphan*/  DM_REG_ANT_TRAIN_PARA1_11N ; 
 int /*<<< orphan*/  DM_REG_ANT_TRAIN_PARA2_11N ; 
 int /*<<< orphan*/  DM_REG_IGI_A_11N ; 
 int /*<<< orphan*/  DM_REG_LNA_SWITCH_11N ; 
 int /*<<< orphan*/  DM_REG_PIN_CTRL_11N ; 
 int /*<<< orphan*/  DM_REG_RX_ANT_CTRL_11N ; 
 int /*<<< orphan*/  DM_REG_TX_ANT_CTRL_11N ; 
 int /*<<< orphan*/  FAT_NORMAL_STATE ; 
 int MASKBYTE0 ; 
 int MASKBYTE1 ; 
 int MASKDWORD ; 
 int MASKLWORD ; 
 struct rtl_dm* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_dm *rtldm = FUNC1(FUNC3(hw));
	struct fast_ant_training *pfat_table = &rtldm->fat_table;
	u32 ant_combination = 2;
	u32 value32, i;

	for (i = 0; i < 6; i++) {
		pfat_table->bssid[i] = 0;
		pfat_table->ant_sum[i] = 0;
		pfat_table->ant_cnt[i] = 0;
		pfat_table->ant_ave[i] = 0;
	}
	pfat_table->train_idx = 0;
	pfat_table->fat_state = FAT_NORMAL_STATE;

	/*MAC Setting*/
	value32 = FUNC2(hw, DM_REG_ANTSEL_PIN_11N, MASKDWORD);
	FUNC4(hw, DM_REG_ANTSEL_PIN_11N,
		      MASKDWORD, value32 | (FUNC0(23) | FUNC0(25)));
	value32 = FUNC2(hw, DM_REG_ANT_TRAIN_PARA2_11N, MASKDWORD);
	FUNC4(hw, DM_REG_ANT_TRAIN_PARA2_11N,
		      MASKDWORD, value32 | (FUNC0(16) | FUNC0(17)));
	FUNC4(hw, DM_REG_ANT_TRAIN_PARA2_11N,
		      MASKLWORD, 0);
	FUNC4(hw, DM_REG_ANT_TRAIN_PARA1_11N,
		      MASKDWORD, 0);

	/*Pin Setting*/
	FUNC4(hw, DM_REG_PIN_CTRL_11N, FUNC0(9) | FUNC0(8), 0);
	FUNC4(hw, DM_REG_RX_ANT_CTRL_11N, FUNC0(10), 0);
	FUNC4(hw, DM_REG_LNA_SWITCH_11N, FUNC0(22), 0);
	FUNC4(hw, DM_REG_LNA_SWITCH_11N, FUNC0(31), 1);

	/*OFDM Setting*/
	FUNC4(hw, DM_REG_ANTDIV_PARA1_11N, MASKDWORD, 0x000000a0);
	/*antenna mapping table*/
	FUNC4(hw, DM_REG_ANT_MAPPING1_11N, MASKBYTE0, 1);
	FUNC4(hw, DM_REG_ANT_MAPPING1_11N, MASKBYTE1, 2);

	/*TX Setting*/
	FUNC4(hw, DM_REG_TX_ANT_CTRL_11N, FUNC0(21), 1);
	FUNC4(hw, DM_REG_RX_ANT_CTRL_11N,
		      FUNC0(5) | FUNC0(4) | FUNC0(3), 0);
	FUNC4(hw, DM_REG_RX_ANT_CTRL_11N,
		      FUNC0(8) | FUNC0(7) | FUNC0(6), 1);
	FUNC4(hw, DM_REG_RX_ANT_CTRL_11N,
		      FUNC0(2) | FUNC0(1) | FUNC0(0), (ant_combination - 1));

	FUNC4(hw, DM_REG_IGI_A_11N, FUNC0(7), 1);
}