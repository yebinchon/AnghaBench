#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  fast_antenna_training_timer; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct fast_ant_training {scalar_t__ fat_state; int* ant_cnt; int* ant_ave; int* ant_sum; int* antsel_a; size_t train_idx; int* antsel_b; int* antsel_c; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DM_REG_IGI_A_11N ; 
 int /*<<< orphan*/  DM_REG_RX_ANT_CTRL_11N ; 
 int /*<<< orphan*/  DM_REG_TXAGC_A_1_MCS32_11N ; 
 int /*<<< orphan*/  DM_REG_TX_ANT_CTRL_11N ; 
 scalar_t__ FAT_NORMAL_STATE ; 
 scalar_t__ FAT_TRAINING_STATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL_WATCH_DOG_TIME ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_dm* FUNC4 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_dm *rtldm = FUNC4(FUNC5(hw));
	struct fast_ant_training *pfat_table = &rtldm->fat_table;
	u32 i, max_rssi = 0;
	u8 target_ant = 2;
	bool bpkt_filter_match = false;

	if (pfat_table->fat_state == FAT_TRAINING_STATE) {
		for (i = 0; i < 7; i++) {
			if (pfat_table->ant_cnt[i] == 0) {
				pfat_table->ant_ave[i] = 0;
			} else {
				pfat_table->ant_ave[i] =
					pfat_table->ant_sum[i] /
					pfat_table->ant_cnt[i];
				bpkt_filter_match = true;
			}

			if (pfat_table->ant_ave[i] > max_rssi) {
				max_rssi = pfat_table->ant_ave[i];
				target_ant = (u8) i;
			}
		}

		if (bpkt_filter_match == false) {
			FUNC6(hw, DM_REG_TXAGC_A_1_MCS32_11N,
				      FUNC0(16), 0);
			FUNC6(hw, DM_REG_IGI_A_11N, FUNC0(7), 0);
		} else {
			FUNC6(hw, DM_REG_TXAGC_A_1_MCS32_11N,
				      FUNC0(16), 0);
			FUNC6(hw, DM_REG_RX_ANT_CTRL_11N, FUNC0(8) |
				      FUNC0(7) | FUNC0(6), target_ant);
			FUNC6(hw, DM_REG_TX_ANT_CTRL_11N,
				      FUNC0(21), 1);

			pfat_table->antsel_a[pfat_table->train_idx] =
				target_ant & FUNC0(0);
			pfat_table->antsel_b[pfat_table->train_idx] =
				(target_ant & FUNC0(1)) >> 1;
			pfat_table->antsel_c[pfat_table->train_idx] =
				(target_ant & FUNC0(2)) >> 2;

			if (target_ant == 0)
				FUNC6(hw, DM_REG_IGI_A_11N, FUNC0(7), 0);
		}

		for (i = 0; i < 7; i++) {
			pfat_table->ant_sum[i] = 0;
			pfat_table->ant_cnt[i] = 0;
		}

		pfat_table->fat_state = FAT_NORMAL_STATE;
		return;
	}

	if (pfat_table->fat_state == FAT_NORMAL_STATE) {
		FUNC3(hw);

		pfat_table->fat_state = FAT_TRAINING_STATE;
		FUNC6(hw, DM_REG_TXAGC_A_1_MCS32_11N, FUNC0(16), 1);
		FUNC6(hw, DM_REG_IGI_A_11N, FUNC0(7), 1);

		FUNC2(&rtlpriv->works.fast_antenna_training_timer,
			  jiffies + FUNC1(RTL_WATCH_DOG_TIME));
	}
}