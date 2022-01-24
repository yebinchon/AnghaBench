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
struct TYPE_2__ {int tx_chain_num; int rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int bbp25; int bbp26; int /*<<< orphan*/  calibration_bw20; int /*<<< orphan*/  calibration_bw40; } ;
struct rf_channel {int channel; int rf1; int rf3; int rf2; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int default_power1; int default_power2; int default_power3; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP109_TX0_POWER ; 
 int /*<<< orphan*/  BBP109_TX1_POWER ; 
 int /*<<< orphan*/  BBP110_TX2_POWER ; 
 int /*<<< orphan*/  RFCSR11_PLL_IDOH ; 
 int /*<<< orphan*/  RFCSR11_PLL_MOD ; 
 int /*<<< orphan*/  RFCSR11_R ; 
 int /*<<< orphan*/  RFCSR1_PLL_PD ; 
 int /*<<< orphan*/  RFCSR1_RF_BLOCK_EN ; 
 int /*<<< orphan*/  RFCSR1_RX0_PD ; 
 int /*<<< orphan*/  RFCSR1_RX1_PD ; 
 int /*<<< orphan*/  RFCSR1_RX2_PD ; 
 int /*<<< orphan*/  RFCSR1_TX0_PD ; 
 int /*<<< orphan*/  RFCSR1_TX1_PD ; 
 int /*<<< orphan*/  RFCSR1_TX2_PD ; 
 int /*<<< orphan*/  RFCSR24_TX_AGC_FC ; 
 int /*<<< orphan*/  RFCSR24_TX_H20M ; 
 int /*<<< orphan*/  RFCSR30_RX_H20M ; 
 int /*<<< orphan*/  RFCSR30_RX_VCM ; 
 int /*<<< orphan*/  RFCSR30_TX_H20M ; 
 int /*<<< orphan*/  RFCSR32_TX_AGC_FC ; 
 int /*<<< orphan*/  RFCSR36_RF_BS ; 
 int /*<<< orphan*/  RFCSR39_RX_DIV ; 
 int /*<<< orphan*/  RFCSR3_BIT1 ; 
 int /*<<< orphan*/  RFCSR3_BIT2 ; 
 int /*<<< orphan*/  RFCSR3_BIT3 ; 
 int /*<<< orphan*/  RFCSR3_BIT4 ; 
 int /*<<< orphan*/  RFCSR3_BIT5 ; 
 int /*<<< orphan*/  RFCSR3_VCOCAL_EN ; 
 int /*<<< orphan*/  RFCSR49_TX_DIV ; 
 int /*<<< orphan*/  RFCSR49_TX_LO1_IC ; 
 int /*<<< orphan*/  RFCSR50_TX_LO1_EN ; 
 int /*<<< orphan*/  RFCSR51_BITS01 ; 
 int /*<<< orphan*/  RFCSR51_BITS24 ; 
 int /*<<< orphan*/  RFCSR51_BITS57 ; 
 int /*<<< orphan*/  RFCSR53_TX_POWER ; 
 int /*<<< orphan*/  RFCSR54_TX_POWER ; 
 int /*<<< orphan*/  RFCSR55_TX_POWER ; 
 int /*<<< orphan*/  RFCSR57_DRV_CC ; 
 int /*<<< orphan*/  RFCSR6_VCO_IC ; 
 scalar_t__ FUNC0 (struct ieee80211_conf*) ; 
 int FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int FUNC4 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 txrx_agc_fc;
	u8 txrx_h20m;
	u8 rfcsr;
	u8 bbp;
	const bool txbf_enabled = false; /* TODO */

	/* TODO: use TX{0,1,2}FinePowerControl values from EEPROM */
	bbp = FUNC1(rt2x00dev, 109);
	FUNC8(&bbp, BBP109_TX0_POWER, 0);
	FUNC8(&bbp, BBP109_TX1_POWER, 0);
	FUNC2(rt2x00dev, 109, bbp);

	bbp = FUNC1(rt2x00dev, 110);
	FUNC8(&bbp, BBP110_TX2_POWER, 0);
	FUNC2(rt2x00dev, 110, bbp);

	if (rf->channel <= 14) {
		/* Restore BBP 25 & 26 for 2.4 GHz */
		FUNC2(rt2x00dev, 25, drv_data->bbp25);
		FUNC2(rt2x00dev, 26, drv_data->bbp26);
	} else {
		/* Hard code BBP 25 & 26 for 5GHz */

		/* Enable IQ Phase correction */
		FUNC2(rt2x00dev, 25, 0x09);
		/* Setup IQ Phase correction value */
		FUNC2(rt2x00dev, 26, 0xff);
	}

	FUNC5(rt2x00dev, 8, rf->rf1);
	FUNC5(rt2x00dev, 9, rf->rf3 & 0xf);

	rfcsr = FUNC4(rt2x00dev, 11);
	FUNC8(&rfcsr, RFCSR11_R, (rf->rf2 & 0x3));
	FUNC5(rt2x00dev, 11, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 11);
	FUNC8(&rfcsr, RFCSR11_PLL_IDOH, 1);
	if (rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR11_PLL_MOD, 1);
	else
		FUNC8(&rfcsr, RFCSR11_PLL_MOD, 2);
	FUNC5(rt2x00dev, 11, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 53);
	if (rf->channel <= 14) {
		rfcsr = 0;
		FUNC8(&rfcsr, RFCSR53_TX_POWER,
				  info->default_power1 & 0x1f);
	} else {
		if (FUNC7(rt2x00dev))
			rfcsr = 0x40;

		FUNC8(&rfcsr, RFCSR53_TX_POWER,
				  ((info->default_power1 & 0x18) << 1) |
				  (info->default_power1 & 7));
	}
	FUNC5(rt2x00dev, 53, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 55);
	if (rf->channel <= 14) {
		rfcsr = 0;
		FUNC8(&rfcsr, RFCSR55_TX_POWER,
				  info->default_power2 & 0x1f);
	} else {
		if (FUNC7(rt2x00dev))
			rfcsr = 0x40;

		FUNC8(&rfcsr, RFCSR55_TX_POWER,
				  ((info->default_power2 & 0x18) << 1) |
				  (info->default_power2 & 7));
	}
	FUNC5(rt2x00dev, 55, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 54);
	if (rf->channel <= 14) {
		rfcsr = 0;
		FUNC8(&rfcsr, RFCSR54_TX_POWER,
				  info->default_power3 & 0x1f);
	} else {
		if (FUNC7(rt2x00dev))
			rfcsr = 0x40;

		FUNC8(&rfcsr, RFCSR54_TX_POWER,
				  ((info->default_power3 & 0x18) << 1) |
				  (info->default_power3 & 7));
	}
	FUNC5(rt2x00dev, 54, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 1);
	FUNC8(&rfcsr, RFCSR1_RX0_PD, 0);
	FUNC8(&rfcsr, RFCSR1_TX0_PD, 0);
	FUNC8(&rfcsr, RFCSR1_RX1_PD, 0);
	FUNC8(&rfcsr, RFCSR1_TX1_PD, 0);
	FUNC8(&rfcsr, RFCSR1_RX2_PD, 0);
	FUNC8(&rfcsr, RFCSR1_TX2_PD, 0);
	FUNC8(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
	FUNC8(&rfcsr, RFCSR1_PLL_PD, 1);

	switch (rt2x00dev->default_ant.tx_chain_num) {
	case 3:
		FUNC8(&rfcsr, RFCSR1_TX2_PD, 1);
		/* fallthrough */
	case 2:
		FUNC8(&rfcsr, RFCSR1_TX1_PD, 1);
		/* fallthrough */
	case 1:
		FUNC8(&rfcsr, RFCSR1_TX0_PD, 1);
		break;
	}

	switch (rt2x00dev->default_ant.rx_chain_num) {
	case 3:
		FUNC8(&rfcsr, RFCSR1_RX2_PD, 1);
		/* fallthrough */
	case 2:
		FUNC8(&rfcsr, RFCSR1_RX1_PD, 1);
		/* fallthrough */
	case 1:
		FUNC8(&rfcsr, RFCSR1_RX0_PD, 1);
		break;
	}
	FUNC5(rt2x00dev, 1, rfcsr);

	FUNC3(rt2x00dev);

	if (FUNC0(conf)) {
		txrx_agc_fc = FUNC6(drv_data->calibration_bw40,
						RFCSR24_TX_AGC_FC);
		txrx_h20m = FUNC6(drv_data->calibration_bw40,
					      RFCSR24_TX_H20M);
	} else {
		txrx_agc_fc = FUNC6(drv_data->calibration_bw20,
						RFCSR24_TX_AGC_FC);
		txrx_h20m = FUNC6(drv_data->calibration_bw20,
					      RFCSR24_TX_H20M);
	}

	/* NOTE: the reference driver does not writes the new value
	 * back to RFCSR 32
	 */
	rfcsr = FUNC4(rt2x00dev, 32);
	FUNC8(&rfcsr, RFCSR32_TX_AGC_FC, txrx_agc_fc);

	if (rf->channel <= 14)
		rfcsr = 0xa0;
	else
		rfcsr = 0x80;
	FUNC5(rt2x00dev, 31, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 30);
	FUNC8(&rfcsr, RFCSR30_TX_H20M, txrx_h20m);
	FUNC8(&rfcsr, RFCSR30_RX_H20M, txrx_h20m);
	FUNC5(rt2x00dev, 30, rfcsr);

	/* Band selection */
	rfcsr = FUNC4(rt2x00dev, 36);
	if (rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR36_RF_BS, 1);
	else
		FUNC8(&rfcsr, RFCSR36_RF_BS, 0);
	FUNC5(rt2x00dev, 36, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 34);
	if (rf->channel <= 14)
		rfcsr = 0x3c;
	else
		rfcsr = 0x20;
	FUNC5(rt2x00dev, 34, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 12);
	if (rf->channel <= 14)
		rfcsr = 0x1a;
	else
		rfcsr = 0x12;
	FUNC5(rt2x00dev, 12, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 6);
	if (rf->channel >= 1 && rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR6_VCO_IC, 1);
	else if (rf->channel >= 36 && rf->channel <= 64)
		FUNC8(&rfcsr, RFCSR6_VCO_IC, 2);
	else if (rf->channel >= 100 && rf->channel <= 128)
		FUNC8(&rfcsr, RFCSR6_VCO_IC, 2);
	else
		FUNC8(&rfcsr, RFCSR6_VCO_IC, 1);
	FUNC5(rt2x00dev, 6, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 30);
	FUNC8(&rfcsr, RFCSR30_RX_VCM, 2);
	FUNC5(rt2x00dev, 30, rfcsr);

	FUNC5(rt2x00dev, 46, 0x60);

	if (rf->channel <= 14) {
		FUNC5(rt2x00dev, 10, 0xd3);
		FUNC5(rt2x00dev, 13, 0x12);
	} else {
		FUNC5(rt2x00dev, 10, 0xd8);
		FUNC5(rt2x00dev, 13, 0x23);
	}

	rfcsr = FUNC4(rt2x00dev, 51);
	FUNC8(&rfcsr, RFCSR51_BITS01, 1);
	FUNC5(rt2x00dev, 51, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 51);
	if (rf->channel <= 14) {
		FUNC8(&rfcsr, RFCSR51_BITS24, 5);
		FUNC8(&rfcsr, RFCSR51_BITS57, 3);
	} else {
		FUNC8(&rfcsr, RFCSR51_BITS24, 4);
		FUNC8(&rfcsr, RFCSR51_BITS57, 2);
	}
	FUNC5(rt2x00dev, 51, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 49);
	if (rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR49_TX_LO1_IC, 3);
	else
		FUNC8(&rfcsr, RFCSR49_TX_LO1_IC, 2);

	if (txbf_enabled)
		FUNC8(&rfcsr, RFCSR49_TX_DIV, 1);

	FUNC5(rt2x00dev, 49, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 50);
	FUNC8(&rfcsr, RFCSR50_TX_LO1_EN, 0);
	FUNC5(rt2x00dev, 50, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 57);
	if (rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR57_DRV_CC, 0x1b);
	else
		FUNC8(&rfcsr, RFCSR57_DRV_CC, 0x0f);
	FUNC5(rt2x00dev, 57, rfcsr);

	if (rf->channel <= 14) {
		FUNC5(rt2x00dev, 44, 0x93);
		FUNC5(rt2x00dev, 52, 0x45);
	} else {
		FUNC5(rt2x00dev, 44, 0x9b);
		FUNC5(rt2x00dev, 52, 0x05);
	}

	/* Initiate VCO calibration */
	rfcsr = FUNC4(rt2x00dev, 3);
	if (rf->channel <= 14) {
		FUNC8(&rfcsr, RFCSR3_VCOCAL_EN, 1);
	} else {
		FUNC8(&rfcsr, RFCSR3_BIT1, 1);
		FUNC8(&rfcsr, RFCSR3_BIT2, 1);
		FUNC8(&rfcsr, RFCSR3_BIT3, 1);
		FUNC8(&rfcsr, RFCSR3_BIT4, 1);
		FUNC8(&rfcsr, RFCSR3_BIT5, 1);
		FUNC8(&rfcsr, RFCSR3_VCOCAL_EN, 1);
	}
	FUNC5(rt2x00dev, 3, rfcsr);

	if (rf->channel >= 1 && rf->channel <= 14) {
		rfcsr = 0x23;
		if (txbf_enabled)
			FUNC8(&rfcsr, RFCSR39_RX_DIV, 1);
		FUNC5(rt2x00dev, 39, rfcsr);

		FUNC5(rt2x00dev, 45, 0xbb);
	} else if (rf->channel >= 36 && rf->channel <= 64) {
		rfcsr = 0x36;
		if (txbf_enabled)
			FUNC8(&rfcsr, RFCSR39_RX_DIV, 1);
		FUNC5(rt2x00dev, 39, 0x36);

		FUNC5(rt2x00dev, 45, 0xeb);
	} else if (rf->channel >= 100 && rf->channel <= 128) {
		rfcsr = 0x32;
		if (txbf_enabled)
			FUNC8(&rfcsr, RFCSR39_RX_DIV, 1);
		FUNC5(rt2x00dev, 39, rfcsr);

		FUNC5(rt2x00dev, 45, 0xb3);
	} else {
		rfcsr = 0x30;
		if (txbf_enabled)
			FUNC8(&rfcsr, RFCSR39_RX_DIV, 1);
		FUNC5(rt2x00dev, 39, rfcsr);

		FUNC5(rt2x00dev, 45, 0x9b);
	}
}