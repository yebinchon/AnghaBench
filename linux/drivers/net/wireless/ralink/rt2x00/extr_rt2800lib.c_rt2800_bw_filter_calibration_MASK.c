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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  flags; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int tx_calibration_bw20; int tx_calibration_bw40; int rx_calibration_bw20; int rx_calibration_bw40; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP4_BANDWIDTH ; 
 int /*<<< orphan*/  CONFIG_CHANNEL_HT40 ; 
 int /*<<< orphan*/  RF_BYPASS0 ; 
 int /*<<< orphan*/  RF_CONTROL0 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int) ; 
 int FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int FUNC3 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 char FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int) ; 
 int FUNC9 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static void FUNC14(struct rt2x00_dev *rt2x00dev,
					 bool btxcal)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 tx_agc_fc = 0, rx_agc_fc = 0, cmm_agc_fc;
	u8 filter_target;
	u8 tx_filter_target_20m = 0x09, tx_filter_target_40m = 0x02;
	u8 rx_filter_target_20m = 0x27, rx_filter_target_40m = 0x31;
	int loop = 0, is_ht40, cnt;
	u8 bbp_val, rf_val;
	char cal_r32_init, cal_r32_val, cal_diff;
	u8 saverfb5r00, saverfb5r01, saverfb5r03, saverfb5r04, saverfb5r05;
	u8 saverfb5r06, saverfb5r07;
	u8 saverfb5r08, saverfb5r17, saverfb5r18, saverfb5r19, saverfb5r20;
	u8 saverfb5r37, saverfb5r38, saverfb5r39, saverfb5r40, saverfb5r41;
	u8 saverfb5r42, saverfb5r43, saverfb5r44, saverfb5r45, saverfb5r46;
	u8 saverfb5r58, saverfb5r59;
	u8 savebbp159r0, savebbp159r2, savebbpr23;
	u32 MAC_RF_CONTROL0, MAC_RF_BYPASS0;

	/* Save MAC registers */
	MAC_RF_CONTROL0 = FUNC6(rt2x00dev, RF_CONTROL0);
	MAC_RF_BYPASS0 = FUNC6(rt2x00dev, RF_BYPASS0);

	/* save BBP registers */
	savebbpr23 = FUNC3(rt2x00dev, 23);

	savebbp159r0 = FUNC1(rt2x00dev, 0);
	savebbp159r2 = FUNC1(rt2x00dev, 2);

	/* Save RF registers */
	saverfb5r00 = FUNC9(rt2x00dev, 5, 0);
	saverfb5r01 = FUNC9(rt2x00dev, 5, 1);
	saverfb5r03 = FUNC9(rt2x00dev, 5, 3);
	saverfb5r04 = FUNC9(rt2x00dev, 5, 4);
	saverfb5r05 = FUNC9(rt2x00dev, 5, 5);
	saverfb5r06 = FUNC9(rt2x00dev, 5, 6);
	saverfb5r07 = FUNC9(rt2x00dev, 5, 7);
	saverfb5r08 = FUNC9(rt2x00dev, 5, 8);
	saverfb5r17 = FUNC9(rt2x00dev, 5, 17);
	saverfb5r18 = FUNC9(rt2x00dev, 5, 18);
	saverfb5r19 = FUNC9(rt2x00dev, 5, 19);
	saverfb5r20 = FUNC9(rt2x00dev, 5, 20);

	saverfb5r37 = FUNC9(rt2x00dev, 5, 37);
	saverfb5r38 = FUNC9(rt2x00dev, 5, 38);
	saverfb5r39 = FUNC9(rt2x00dev, 5, 39);
	saverfb5r40 = FUNC9(rt2x00dev, 5, 40);
	saverfb5r41 = FUNC9(rt2x00dev, 5, 41);
	saverfb5r42 = FUNC9(rt2x00dev, 5, 42);
	saverfb5r43 = FUNC9(rt2x00dev, 5, 43);
	saverfb5r44 = FUNC9(rt2x00dev, 5, 44);
	saverfb5r45 = FUNC9(rt2x00dev, 5, 45);
	saverfb5r46 = FUNC9(rt2x00dev, 5, 46);

	saverfb5r58 = FUNC9(rt2x00dev, 5, 58);
	saverfb5r59 = FUNC9(rt2x00dev, 5, 59);

	rf_val = FUNC9(rt2x00dev, 5, 0);
	rf_val |= 0x3;
	FUNC10(rt2x00dev, 5, 0, rf_val);

	rf_val = FUNC9(rt2x00dev, 5, 1);
	rf_val |= 0x1;
	FUNC10(rt2x00dev, 5, 1, rf_val);

	cnt = 0;
	do {
		FUNC13(500, 2000);
		rf_val = FUNC9(rt2x00dev, 5, 1);
		if (((rf_val & 0x1) == 0x00) || (cnt == 40))
			break;
		cnt++;
	} while (cnt < 40);

	rf_val = FUNC9(rt2x00dev, 5, 0);
	rf_val &= (~0x3);
	rf_val |= 0x1;
	FUNC10(rt2x00dev, 5, 0, rf_val);

	/* I-3 */
	bbp_val = FUNC3(rt2x00dev, 23);
	bbp_val &= (~0x1F);
	bbp_val |= 0x10;
	FUNC4(rt2x00dev, 23, bbp_val);

	do {
		/* I-4,5,6,7,8,9 */
		if (loop == 0) {
			is_ht40 = false;

			if (btxcal)
				filter_target = tx_filter_target_20m;
			else
				filter_target = rx_filter_target_20m;
		} else {
			is_ht40 = true;

			if (btxcal)
				filter_target = tx_filter_target_40m;
			else
				filter_target = rx_filter_target_40m;
		}

		rf_val = FUNC9(rt2x00dev, 5, 8);
		rf_val &= (~0x04);
		if (loop == 1)
			rf_val |= 0x4;

		FUNC10(rt2x00dev, 5, 8, rf_val);

		FUNC0(rt2x00dev, true, is_ht40);

		FUNC8(rt2x00dev, btxcal);
		if (btxcal) {
			tx_agc_fc = 0;
			rf_val = FUNC9(rt2x00dev, 5, 58);
			rf_val &= (~0x7F);
			FUNC10(rt2x00dev, 5, 58, rf_val);
			rf_val = FUNC9(rt2x00dev, 5, 59);
			rf_val &= (~0x7F);
			FUNC10(rt2x00dev, 5, 59, rf_val);
		} else {
			rx_agc_fc = 0;
			rf_val = FUNC9(rt2x00dev, 5, 6);
			rf_val &= (~0x7F);
			FUNC10(rt2x00dev, 5, 6, rf_val);
			rf_val = FUNC9(rt2x00dev, 5, 7);
			rf_val &= (~0x7F);
			FUNC10(rt2x00dev, 5, 7, rf_val);
		}

		FUNC13(1000, 2000);

		bbp_val = FUNC1(rt2x00dev, 2);
		bbp_val &= (~0x6);
		FUNC2(rt2x00dev, 2, bbp_val);

		FUNC0(rt2x00dev, false, is_ht40);

		cal_r32_init = FUNC5(rt2x00dev);

		bbp_val = FUNC1(rt2x00dev, 2);
		bbp_val |= 0x6;
		FUNC2(rt2x00dev, 2, bbp_val);
do_cal:
		if (btxcal) {
			rf_val = FUNC9(rt2x00dev, 5, 58);
			rf_val &= (~0x7F);
			rf_val |= tx_agc_fc;
			FUNC10(rt2x00dev, 5, 58, rf_val);
			rf_val = FUNC9(rt2x00dev, 5, 59);
			rf_val &= (~0x7F);
			rf_val |= tx_agc_fc;
			FUNC10(rt2x00dev, 5, 59, rf_val);
		} else {
			rf_val = FUNC9(rt2x00dev, 5, 6);
			rf_val &= (~0x7F);
			rf_val |= rx_agc_fc;
			FUNC10(rt2x00dev, 5, 6, rf_val);
			rf_val = FUNC9(rt2x00dev, 5, 7);
			rf_val &= (~0x7F);
			rf_val |= rx_agc_fc;
			FUNC10(rt2x00dev, 5, 7, rf_val);
		}

		FUNC13(500, 1000);

		FUNC0(rt2x00dev, false, is_ht40);

		cal_r32_val = FUNC5(rt2x00dev);

		cal_diff = cal_r32_init - cal_r32_val;

		if (btxcal)
			cmm_agc_fc = tx_agc_fc;
		else
			cmm_agc_fc = rx_agc_fc;

		if (((cal_diff > filter_target) && (cmm_agc_fc == 0)) ||
		    ((cal_diff < filter_target) && (cmm_agc_fc == 0x3f))) {
			if (btxcal)
				tx_agc_fc = 0;
			else
				rx_agc_fc = 0;
		} else if ((cal_diff <= filter_target) && (cmm_agc_fc < 0x3f)) {
			if (btxcal)
				tx_agc_fc++;
			else
				rx_agc_fc++;
			goto do_cal;
		}

		if (btxcal) {
			if (loop == 0)
				drv_data->tx_calibration_bw20 = tx_agc_fc;
			else
				drv_data->tx_calibration_bw40 = tx_agc_fc;
		} else {
			if (loop == 0)
				drv_data->rx_calibration_bw20 = rx_agc_fc;
			else
				drv_data->rx_calibration_bw40 = rx_agc_fc;
		}

		loop++;
	} while (loop <= 1);

	FUNC10(rt2x00dev, 5, 0, saverfb5r00);
	FUNC10(rt2x00dev, 5, 1, saverfb5r01);
	FUNC10(rt2x00dev, 5, 3, saverfb5r03);
	FUNC10(rt2x00dev, 5, 4, saverfb5r04);
	FUNC10(rt2x00dev, 5, 5, saverfb5r05);
	FUNC10(rt2x00dev, 5, 6, saverfb5r06);
	FUNC10(rt2x00dev, 5, 7, saverfb5r07);
	FUNC10(rt2x00dev, 5, 8, saverfb5r08);
	FUNC10(rt2x00dev, 5, 17, saverfb5r17);
	FUNC10(rt2x00dev, 5, 18, saverfb5r18);
	FUNC10(rt2x00dev, 5, 19, saverfb5r19);
	FUNC10(rt2x00dev, 5, 20, saverfb5r20);

	FUNC10(rt2x00dev, 5, 37, saverfb5r37);
	FUNC10(rt2x00dev, 5, 38, saverfb5r38);
	FUNC10(rt2x00dev, 5, 39, saverfb5r39);
	FUNC10(rt2x00dev, 5, 40, saverfb5r40);
	FUNC10(rt2x00dev, 5, 41, saverfb5r41);
	FUNC10(rt2x00dev, 5, 42, saverfb5r42);
	FUNC10(rt2x00dev, 5, 43, saverfb5r43);
	FUNC10(rt2x00dev, 5, 44, saverfb5r44);
	FUNC10(rt2x00dev, 5, 45, saverfb5r45);
	FUNC10(rt2x00dev, 5, 46, saverfb5r46);

	FUNC10(rt2x00dev, 5, 58, saverfb5r58);
	FUNC10(rt2x00dev, 5, 59, saverfb5r59);

	FUNC4(rt2x00dev, 23, savebbpr23);

	FUNC2(rt2x00dev, 0, savebbp159r0);
	FUNC2(rt2x00dev, 2, savebbp159r2);

	bbp_val = FUNC3(rt2x00dev, 4);
	FUNC11(&bbp_val, BBP4_BANDWIDTH,
			  2 * FUNC12(CONFIG_CHANNEL_HT40, &rt2x00dev->flags));
	FUNC4(rt2x00dev, 4, bbp_val);

	FUNC7(rt2x00dev, RF_CONTROL0, MAC_RF_CONTROL0);
	FUNC7(rt2x00dev, RF_BYPASS0, MAC_RF_BYPASS0);
}