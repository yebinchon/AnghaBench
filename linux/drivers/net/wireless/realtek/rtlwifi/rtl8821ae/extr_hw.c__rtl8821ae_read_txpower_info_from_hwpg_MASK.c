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
struct txpower_info_5g {int** index_bw40_base; int /*<<< orphan*/ ** bw80_diff; int /*<<< orphan*/ ** bw40_diff; int /*<<< orphan*/ ** bw20_diff; int /*<<< orphan*/ ** ofdm_diff; } ;
struct txpower_info_2g {int /*<<< orphan*/ ** bw40_diff; int /*<<< orphan*/ ** bw20_diff; int /*<<< orphan*/ ** ofdm_diff; int /*<<< orphan*/ ** cck_diff; int /*<<< orphan*/ ** index_bw40_base; int /*<<< orphan*/ ** index_cck_base; } ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int** txpwr_5g_bw40base; int** txpwr_5g_bw80base; int eeprom_regulatory; int /*<<< orphan*/ ** txpwr_5g_bw80diff; int /*<<< orphan*/ ** txpwr_5g_bw40diff; int /*<<< orphan*/ ** txpwr_5g_bw20diff; int /*<<< orphan*/ ** txpwr_5g_ofdmdiff; int /*<<< orphan*/ ** txpwr_ht40diff; int /*<<< orphan*/ ** txpwr_ht20diff; int /*<<< orphan*/ ** txpwr_legacyhtdiff; int /*<<< orphan*/ ** txpwr_cckdiff; int /*<<< orphan*/ ** txpwrlevel_ht40_1s; int /*<<< orphan*/ ** txpwrlevel_cck; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int CHANNEL_MAX_NUMBER_2G ; 
 int CHANNEL_MAX_NUMBER_5G ; 
 int CHANNEL_MAX_NUMBER_5G_80M ; 
 size_t EEPROM_RF_BOARD_OPTION ; 
 int /*<<< orphan*/  FINIT ; 
 int /*<<< orphan*/  INIT_TXPOWER ; 
 int MAX_TX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct txpower_info_2g*,struct txpower_info_5g*,int,int*) ; 
 int* channel5g ; 
 int* channel5g_80m ; 
 struct rtl_efuse* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
						 bool autoload_fail,
						 u8 *hwinfo)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_efuse *rtlefuse = FUNC3(FUNC4(hw));
	struct txpower_info_2g pwrinfo24g;
	struct txpower_info_5g pwrinfo5g;
	u8 rf_path, index;
	u8 i;

	FUNC2(hw, &pwrinfo24g,
		&pwrinfo5g, autoload_fail, hwinfo);

	for (rf_path = 0; rf_path < 2; rf_path++) {
		for (i = 0; i < CHANNEL_MAX_NUMBER_2G; i++) {
			index = FUNC1(i + 1);

			if (i == CHANNEL_MAX_NUMBER_2G - 1) {
				rtlefuse->txpwrlevel_cck[rf_path][i] =
					pwrinfo24g.index_cck_base[rf_path][5];
				rtlefuse->txpwrlevel_ht40_1s[rf_path][i] =
					pwrinfo24g.index_bw40_base[rf_path][index];
			} else {
				rtlefuse->txpwrlevel_cck[rf_path][i] =
					pwrinfo24g.index_cck_base[rf_path][index];
				rtlefuse->txpwrlevel_ht40_1s[rf_path][i] =
					pwrinfo24g.index_bw40_base[rf_path][index];
			}
		}

		for (i = 0; i < CHANNEL_MAX_NUMBER_5G; i++) {
			index = FUNC1(channel5g[i]);
			rtlefuse->txpwr_5g_bw40base[rf_path][i] =
				pwrinfo5g.index_bw40_base[rf_path][index];
		}
		for (i = 0; i < CHANNEL_MAX_NUMBER_5G_80M; i++) {
			u8 upper, lower;
			index = FUNC1(channel5g_80m[i]);
			upper = pwrinfo5g.index_bw40_base[rf_path][index];
			lower = pwrinfo5g.index_bw40_base[rf_path][index + 1];

			rtlefuse->txpwr_5g_bw80base[rf_path][i] = (upper + lower) / 2;
		}
		for (i = 0; i < MAX_TX_COUNT; i++) {
			rtlefuse->txpwr_cckdiff[rf_path][i] =
				pwrinfo24g.cck_diff[rf_path][i];
			rtlefuse->txpwr_legacyhtdiff[rf_path][i] =
				pwrinfo24g.ofdm_diff[rf_path][i];
			rtlefuse->txpwr_ht20diff[rf_path][i] =
				pwrinfo24g.bw20_diff[rf_path][i];
			rtlefuse->txpwr_ht40diff[rf_path][i] =
				pwrinfo24g.bw40_diff[rf_path][i];

			rtlefuse->txpwr_5g_ofdmdiff[rf_path][i] =
				pwrinfo5g.ofdm_diff[rf_path][i];
			rtlefuse->txpwr_5g_bw20diff[rf_path][i] =
				pwrinfo5g.bw20_diff[rf_path][i];
			rtlefuse->txpwr_5g_bw40diff[rf_path][i] =
				pwrinfo5g.bw40_diff[rf_path][i];
			rtlefuse->txpwr_5g_bw80diff[rf_path][i] =
				pwrinfo5g.bw80_diff[rf_path][i];
		}
	}
	/*bit0~2*/
	if (!autoload_fail) {
		rtlefuse->eeprom_regulatory = hwinfo[EEPROM_RF_BOARD_OPTION] & 0x07;
		if (hwinfo[EEPROM_RF_BOARD_OPTION] == 0xFF)
			rtlefuse->eeprom_regulatory = 0;
	} else {
		rtlefuse->eeprom_regulatory = 0;
	}

	FUNC0(rtlpriv, FINIT, INIT_TXPOWER,
	"eeprom_regulatory = 0x%x\n", rtlefuse->eeprom_regulatory);
}