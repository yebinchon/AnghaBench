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
struct rt2x00_dev {TYPE_1__ default_ant; } ;
struct rf_channel {int channel; int rf1; int rf3; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int default_power1; int default_power2; int default_power3; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFCSR1_PLL_PD ; 
 int /*<<< orphan*/  RFCSR1_RF_BLOCK_EN ; 
 int /*<<< orphan*/  RFCSR1_RX0_PD ; 
 int /*<<< orphan*/  RFCSR1_RX1_PD ; 
 int /*<<< orphan*/  RFCSR1_RX2_PD ; 
 int /*<<< orphan*/  RFCSR1_TX0_PD ; 
 int /*<<< orphan*/  RFCSR1_TX1_PD ; 
 int /*<<< orphan*/  RFCSR1_TX2_PD ; 
 int /*<<< orphan*/  RFCSR36_RF_BS ; 
 int /*<<< orphan*/  RFCSR3_VCOCAL_EN ; 
 scalar_t__ FUNC0 (struct ieee80211_conf*) ; 
 int FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int FUNC4 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	u8 rfcsr;
	u8 bbp;
	u8 pwr1, pwr2, pwr3;

	const bool txbf_enabled = false; /* TODO */

	/* TODO: add band selection */

	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 6, 0x40);
	else if (rf->channel < 132)
		FUNC5(rt2x00dev, 6, 0x80);
	else
		FUNC5(rt2x00dev, 6, 0x40);

	FUNC5(rt2x00dev, 8, rf->rf1);
	FUNC5(rt2x00dev, 9, rf->rf3);

	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 11, 0x46);
	else
		FUNC5(rt2x00dev, 11, 0x48);

	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 12, 0x1a);
	else
		FUNC5(rt2x00dev, 12, 0x52);

	FUNC5(rt2x00dev, 13, 0x12);

	rfcsr = FUNC4(rt2x00dev, 1);
	FUNC7(&rfcsr, RFCSR1_RX0_PD, 0);
	FUNC7(&rfcsr, RFCSR1_TX0_PD, 0);
	FUNC7(&rfcsr, RFCSR1_RX1_PD, 0);
	FUNC7(&rfcsr, RFCSR1_TX1_PD, 0);
	FUNC7(&rfcsr, RFCSR1_RX2_PD, 0);
	FUNC7(&rfcsr, RFCSR1_TX2_PD, 0);
	FUNC7(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
	FUNC7(&rfcsr, RFCSR1_PLL_PD, 1);

	switch (rt2x00dev->default_ant.tx_chain_num) {
	case 3:
		FUNC7(&rfcsr, RFCSR1_TX2_PD, 1);
		/* fallthrough */
	case 2:
		FUNC7(&rfcsr, RFCSR1_TX1_PD, 1);
		/* fallthrough */
	case 1:
		FUNC7(&rfcsr, RFCSR1_TX0_PD, 1);
		break;
	}

	switch (rt2x00dev->default_ant.rx_chain_num) {
	case 3:
		FUNC7(&rfcsr, RFCSR1_RX2_PD, 1);
		/* fallthrough */
	case 2:
		FUNC7(&rfcsr, RFCSR1_RX1_PD, 1);
		/* fallthrough */
	case 1:
		FUNC7(&rfcsr, RFCSR1_RX0_PD, 1);
		break;
	}
	FUNC5(rt2x00dev, 1, rfcsr);

	FUNC3(rt2x00dev);

	rfcsr = FUNC4(rt2x00dev, 30);
	if (!FUNC0(conf))
		rfcsr &= ~(0x06);
	else
		rfcsr |= 0x06;
	FUNC5(rt2x00dev, 30, rfcsr);

	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 31, 0xa0);
	else
		FUNC5(rt2x00dev, 31, 0x80);

	if (FUNC0(conf))
		FUNC5(rt2x00dev, 32, 0x80);
	else
		FUNC5(rt2x00dev, 32, 0xd8);

	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 34, 0x3c);
	else
		FUNC5(rt2x00dev, 34, 0x20);

	/* loopback RF_BS */
	rfcsr = FUNC4(rt2x00dev, 36);
	if (rf->channel <= 14)
		FUNC7(&rfcsr, RFCSR36_RF_BS, 1);
	else
		FUNC7(&rfcsr, RFCSR36_RF_BS, 0);
	FUNC5(rt2x00dev, 36, rfcsr);

	if (rf->channel <= 14)
		rfcsr = 0x23;
	else if (rf->channel < 100)
		rfcsr = 0x36;
	else if (rf->channel < 132)
		rfcsr = 0x32;
	else
		rfcsr = 0x30;

	if (txbf_enabled)
		rfcsr |= 0x40;

	FUNC5(rt2x00dev, 39, rfcsr);

	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 44, 0x93);
	else
		FUNC5(rt2x00dev, 44, 0x9b);

	if (rf->channel <= 14)
		rfcsr = 0xbb;
	else if (rf->channel < 100)
		rfcsr = 0xeb;
	else if (rf->channel < 132)
		rfcsr = 0xb3;
	else
		rfcsr = 0x9b;
	FUNC5(rt2x00dev, 45, rfcsr);

	if (rf->channel <= 14)
		rfcsr = 0x8e;
	else
		rfcsr = 0x8a;

	if (txbf_enabled)
		rfcsr |= 0x20;

	FUNC5(rt2x00dev, 49, rfcsr);

	FUNC5(rt2x00dev, 50, 0x86);

	rfcsr = FUNC4(rt2x00dev, 51);
	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 51, 0x75);
	else
		FUNC5(rt2x00dev, 51, 0x51);

	rfcsr = FUNC4(rt2x00dev, 52);
	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 52, 0x45);
	else
		FUNC5(rt2x00dev, 52, 0x05);

	if (rf->channel <= 14) {
		pwr1 = info->default_power1 & 0x1f;
		pwr2 = info->default_power2 & 0x1f;
		pwr3 = info->default_power3 & 0x1f;
	} else {
		pwr1 = 0x48 | ((info->default_power1 & 0x18) << 1) |
			(info->default_power1 & 0x7);
		pwr2 = 0x48 | ((info->default_power2 & 0x18) << 1) |
			(info->default_power2 & 0x7);
		pwr3 = 0x48 | ((info->default_power3 & 0x18) << 1) |
			(info->default_power3 & 0x7);
	}

	FUNC5(rt2x00dev, 53, pwr1);
	FUNC5(rt2x00dev, 54, pwr2);
	FUNC5(rt2x00dev, 55, pwr3);

	FUNC6(rt2x00dev, "Channel:%d, pwr1:%02x, pwr2:%02x, pwr3:%02x\n",
		   rf->channel, pwr1, pwr2, pwr3);

	bbp = (info->default_power1 >> 5) |
	      ((info->default_power2 & 0xe0) >> 1);
	FUNC2(rt2x00dev, 109, bbp);

	bbp = FUNC1(rt2x00dev, 110);
	bbp &= 0x0f;
	bbp |= (info->default_power3 & 0xe0) >> 1;
	FUNC2(rt2x00dev, 110, bbp);

	rfcsr = FUNC4(rt2x00dev, 57);
	if (rf->channel <= 14)
		FUNC5(rt2x00dev, 57, 0x6e);
	else
		FUNC5(rt2x00dev, 57, 0x3e);

	/* Enable RF tuning */
	rfcsr = FUNC4(rt2x00dev, 3);
	FUNC7(&rfcsr, RFCSR3_VCOCAL_EN, 1);
	FUNC5(rt2x00dev, 3, rfcsr);

	FUNC8(2000);

	bbp = FUNC1(rt2x00dev, 49);
	/* clear update flag */
	FUNC2(rt2x00dev, 49, bbp & 0xfe);
	FUNC2(rt2x00dev, 49, bbp);

	/* TODO: add calibration for TxBF */
}