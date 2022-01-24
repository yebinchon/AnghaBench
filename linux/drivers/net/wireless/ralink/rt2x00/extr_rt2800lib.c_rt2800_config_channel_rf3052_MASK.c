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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int tx_chain_num; int rx_chain_num; } ;
struct rt2x00_dev {int freq_offset; TYPE_1__ default_ant; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int bbp25; int bbp26; int calibration_bw40; int calibration_bw20; int txmixer_gain_24g; int txmixer_gain_5g; } ;
struct rf_channel {int channel; int rf1; int rf3; int rf2; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int default_power1; int default_power2; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR7 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL7 ; 
 int /*<<< orphan*/  RFCSR12_DR0 ; 
 int /*<<< orphan*/  RFCSR12_TX_POWER ; 
 int /*<<< orphan*/  RFCSR13_DR0 ; 
 int /*<<< orphan*/  RFCSR13_TX_POWER ; 
 int /*<<< orphan*/  RFCSR16_TXMIXER_GAIN ; 
 int /*<<< orphan*/  RFCSR1_RX0_PD ; 
 int /*<<< orphan*/  RFCSR1_RX1_PD ; 
 int /*<<< orphan*/  RFCSR1_RX2_PD ; 
 int /*<<< orphan*/  RFCSR1_TX0_PD ; 
 int /*<<< orphan*/  RFCSR1_TX1_PD ; 
 int /*<<< orphan*/  RFCSR1_TX2_PD ; 
 int /*<<< orphan*/  RFCSR23_FREQ_OFFSET ; 
 int /*<<< orphan*/  RFCSR5_R1 ; 
 int /*<<< orphan*/  RFCSR6_R1 ; 
 int /*<<< orphan*/  RFCSR6_TXDIV ; 
 int /*<<< orphan*/  RFCSR7_BIT2 ; 
 int /*<<< orphan*/  RFCSR7_BIT3 ; 
 int /*<<< orphan*/  RFCSR7_BIT4 ; 
 int /*<<< orphan*/  RFCSR7_BITS67 ; 
 int /*<<< orphan*/  RFCSR7_RF_TUNING ; 
 scalar_t__ FUNC0 (struct ieee80211_conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 rfcsr;
	u32 reg;

	if (rf->channel <= 14) {
		FUNC1(rt2x00dev, 25, drv_data->bbp25);
		FUNC1(rt2x00dev, 26, drv_data->bbp26);
	} else {
		FUNC1(rt2x00dev, 25, 0x09);
		FUNC1(rt2x00dev, 26, 0xff);
	}

	FUNC5(rt2x00dev, 2, rf->rf1);
	FUNC5(rt2x00dev, 3, rf->rf3);

	rfcsr = FUNC4(rt2x00dev, 6);
	FUNC8(&rfcsr, RFCSR6_R1, rf->rf2);
	if (rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR6_TXDIV, 2);
	else
		FUNC8(&rfcsr, RFCSR6_TXDIV, 1);
	FUNC5(rt2x00dev, 6, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 5);
	if (rf->channel <= 14)
		FUNC8(&rfcsr, RFCSR5_R1, 1);
	else
		FUNC8(&rfcsr, RFCSR5_R1, 2);
	FUNC5(rt2x00dev, 5, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 12);
	if (rf->channel <= 14) {
		FUNC8(&rfcsr, RFCSR12_DR0, 3);
		FUNC8(&rfcsr, RFCSR12_TX_POWER,
				  info->default_power1);
	} else {
		FUNC8(&rfcsr, RFCSR12_DR0, 7);
		FUNC8(&rfcsr, RFCSR12_TX_POWER,
				(info->default_power1 & 0x3) |
				((info->default_power1 & 0xC) << 1));
	}
	FUNC5(rt2x00dev, 12, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 13);
	if (rf->channel <= 14) {
		FUNC8(&rfcsr, RFCSR13_DR0, 3);
		FUNC8(&rfcsr, RFCSR13_TX_POWER,
				  info->default_power2);
	} else {
		FUNC8(&rfcsr, RFCSR13_DR0, 7);
		FUNC8(&rfcsr, RFCSR13_TX_POWER,
				(info->default_power2 & 0x3) |
				((info->default_power2 & 0xC) << 1));
	}
	FUNC5(rt2x00dev, 13, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 1);
	FUNC8(&rfcsr, RFCSR1_RX0_PD, 0);
	FUNC8(&rfcsr, RFCSR1_TX0_PD, 0);
	FUNC8(&rfcsr, RFCSR1_RX1_PD, 0);
	FUNC8(&rfcsr, RFCSR1_TX1_PD, 0);
	FUNC8(&rfcsr, RFCSR1_RX2_PD, 0);
	FUNC8(&rfcsr, RFCSR1_TX2_PD, 0);
	if (FUNC6(rt2x00dev)) {
		if (rf->channel <= 14) {
			FUNC8(&rfcsr, RFCSR1_RX0_PD, 1);
			FUNC8(&rfcsr, RFCSR1_TX0_PD, 1);
		}
		FUNC8(&rfcsr, RFCSR1_RX2_PD, 1);
		FUNC8(&rfcsr, RFCSR1_TX2_PD, 1);
	} else {
		switch (rt2x00dev->default_ant.tx_chain_num) {
		case 1:
			FUNC8(&rfcsr, RFCSR1_TX1_PD, 1);
			/* fall through */
		case 2:
			FUNC8(&rfcsr, RFCSR1_TX2_PD, 1);
			break;
		}

		switch (rt2x00dev->default_ant.rx_chain_num) {
		case 1:
			FUNC8(&rfcsr, RFCSR1_RX1_PD, 1);
			/* fall through */
		case 2:
			FUNC8(&rfcsr, RFCSR1_RX2_PD, 1);
			break;
		}
	}
	FUNC5(rt2x00dev, 1, rfcsr);

	rfcsr = FUNC4(rt2x00dev, 23);
	FUNC8(&rfcsr, RFCSR23_FREQ_OFFSET, rt2x00dev->freq_offset);
	FUNC5(rt2x00dev, 23, rfcsr);

	if (FUNC0(conf)) {
		FUNC5(rt2x00dev, 24, drv_data->calibration_bw40);
		FUNC5(rt2x00dev, 31, drv_data->calibration_bw40);
	} else {
		FUNC5(rt2x00dev, 24, drv_data->calibration_bw20);
		FUNC5(rt2x00dev, 31, drv_data->calibration_bw20);
	}

	if (rf->channel <= 14) {
		FUNC5(rt2x00dev, 7, 0xd8);
		FUNC5(rt2x00dev, 9, 0xc3);
		FUNC5(rt2x00dev, 10, 0xf1);
		FUNC5(rt2x00dev, 11, 0xb9);
		FUNC5(rt2x00dev, 15, 0x53);
		rfcsr = 0x4c;
		FUNC8(&rfcsr, RFCSR16_TXMIXER_GAIN,
				  drv_data->txmixer_gain_24g);
		FUNC5(rt2x00dev, 16, rfcsr);
		FUNC5(rt2x00dev, 17, 0x23);
		FUNC5(rt2x00dev, 19, 0x93);
		FUNC5(rt2x00dev, 20, 0xb3);
		FUNC5(rt2x00dev, 25, 0x15);
		FUNC5(rt2x00dev, 26, 0x85);
		FUNC5(rt2x00dev, 27, 0x00);
		FUNC5(rt2x00dev, 29, 0x9b);
	} else {
		rfcsr = FUNC4(rt2x00dev, 7);
		FUNC8(&rfcsr, RFCSR7_BIT2, 1);
		FUNC8(&rfcsr, RFCSR7_BIT3, 0);
		FUNC8(&rfcsr, RFCSR7_BIT4, 1);
		FUNC8(&rfcsr, RFCSR7_BITS67, 0);
		FUNC5(rt2x00dev, 7, rfcsr);
		FUNC5(rt2x00dev, 9, 0xc0);
		FUNC5(rt2x00dev, 10, 0xf1);
		FUNC5(rt2x00dev, 11, 0x00);
		FUNC5(rt2x00dev, 15, 0x43);
		rfcsr = 0x7a;
		FUNC8(&rfcsr, RFCSR16_TXMIXER_GAIN,
				  drv_data->txmixer_gain_5g);
		FUNC5(rt2x00dev, 16, rfcsr);
		FUNC5(rt2x00dev, 17, 0x23);
		if (rf->channel <= 64) {
			FUNC5(rt2x00dev, 19, 0xb7);
			FUNC5(rt2x00dev, 20, 0xf6);
			FUNC5(rt2x00dev, 25, 0x3d);
		} else if (rf->channel <= 128) {
			FUNC5(rt2x00dev, 19, 0x74);
			FUNC5(rt2x00dev, 20, 0xf4);
			FUNC5(rt2x00dev, 25, 0x01);
		} else {
			FUNC5(rt2x00dev, 19, 0x72);
			FUNC5(rt2x00dev, 20, 0xf3);
			FUNC5(rt2x00dev, 25, 0x01);
		}
		FUNC5(rt2x00dev, 26, 0x87);
		FUNC5(rt2x00dev, 27, 0x01);
		FUNC5(rt2x00dev, 29, 0x9f);
	}

	reg = FUNC2(rt2x00dev, GPIO_CTRL);
	FUNC7(&reg, GPIO_CTRL_DIR7, 0);
	if (rf->channel <= 14)
		FUNC7(&reg, GPIO_CTRL_VAL7, 1);
	else
		FUNC7(&reg, GPIO_CTRL_VAL7, 0);
	FUNC3(rt2x00dev, GPIO_CTRL, reg);

	rfcsr = FUNC4(rt2x00dev, 7);
	FUNC8(&rfcsr, RFCSR7_RF_TUNING, 1);
	FUNC5(rt2x00dev, 7, rfcsr);
}