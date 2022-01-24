#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int tx_chain_num; int rx_chain_num; } ;
struct TYPE_3__ {int rt; int rf; } ;
struct rt2x00_dev {int lna_gain; TYPE_2__ default_ant; TYPE_1__ chip; } ;
struct rf_channel {int channel; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {void* default_power3; void* default_power2; void* default_power1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP3_HT40_MINUS ; 
 int /*<<< orphan*/  BBP49_UPDATE_FLAG ; 
 int /*<<< orphan*/  BBP4_BANDWIDTH ; 
 int /*<<< orphan*/  CH_BUSY_STA ; 
 int /*<<< orphan*/  CH_BUSY_STA_SEC ; 
 int /*<<< orphan*/  CH_IDLE_STA ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR4 ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR7 ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR8 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL4 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL7 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL8 ; 
 int /*<<< orphan*/  REV_RT2860C ; 
#define  RF2020 148 
#define  RF3020 147 
#define  RF3021 146 
#define  RF3022 145 
#define  RF3052 144 
#define  RF3053 143 
#define  RF3070 142 
#define  RF3290 141 
#define  RF3320 140 
#define  RF3322 139 
 int /*<<< orphan*/  RF3322_RFCSR30_RX_H20M ; 
 int /*<<< orphan*/  RF3322_RFCSR30_TX_H20M ; 
#define  RF3853 138 
#define  RF5350 137 
#define  RF5360 136 
#define  RF5362 135 
#define  RF5370 134 
#define  RF5372 133 
#define  RF5390 132 
#define  RF5392 131 
#define  RF5592 130 
#define  RF7620 129 
 int /*<<< orphan*/  RFCSR30_RX_H20M ; 
 int /*<<< orphan*/  RFCSR30_TX_H20M ; 
 int /*<<< orphan*/  RFCSR3_VCOCAL_EN ; 
 int /*<<< orphan*/  RT2860 ; 
 int const RT3352 ; 
 int const RT3572 ; 
 int const RT3593 ; 
#define  RT3883 128 
 int const RT5350 ; 
 int const RT5390 ; 
 int const RT5392 ; 
 int const RT5592 ; 
 int const RT6352 ; 
 int /*<<< orphan*/  TX_BAND_CFG ; 
 int /*<<< orphan*/  TX_BAND_CFG_A ; 
 int /*<<< orphan*/  TX_BAND_CFG_BG ; 
 int /*<<< orphan*/  TX_BAND_CFG_HT40_MINUS ; 
 int /*<<< orphan*/  TX_PIN_CFG ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_A0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_A1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_A2_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_G0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_G1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_LNA_PE_G2_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A2_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G2_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_RFRX_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_RFTR_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_TRSW_EN ; 
 int FUNC0 (struct ieee80211_conf*) ; 
 int FUNC1 (struct ieee80211_conf*) ; 
 int FUNC2 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct rt2x00_dev*,struct ieee80211_conf*,struct rf_channel*,struct channel_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*,int) ; 
 int FUNC16 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct rt2x00_dev*,int,int) ; 
 void* FUNC20 (struct rt2x00_dev*,int,void*) ; 
 int /*<<< orphan*/  FUNC21 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC22 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC23 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC24 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC25 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC26 (struct rt2x00_dev*,int const) ; 
 scalar_t__ FUNC27 (struct rt2x00_dev*,int const) ; 
 scalar_t__ FUNC28 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct rt2x00_dev*,struct rf_channel*) ; 
 int /*<<< orphan*/  FUNC32 (int,int) ; 

__attribute__((used)) static void FUNC33(struct rt2x00_dev *rt2x00dev,
				  struct ieee80211_conf *conf,
				  struct rf_channel *rf,
				  struct channel_info *info)
{
	u32 reg;
	u32 tx_pin;
	u8 bbp, rfcsr;

	info->default_power1 = FUNC20(rt2x00dev, rf->channel,
						     info->default_power1);
	info->default_power2 = FUNC20(rt2x00dev, rf->channel,
						     info->default_power2);
	if (rt2x00dev->default_ant.tx_chain_num > 2)
		info->default_power3 =
			FUNC20(rt2x00dev, rf->channel,
					      info->default_power3);

	switch (rt2x00dev->chip.rt) {
	case RT3883:
		FUNC31(rt2x00dev, rf);
		break;
	}

	switch (rt2x00dev->chip.rf) {
	case RF2020:
	case RF3020:
	case RF3021:
	case RF3022:
	case RF3320:
		FUNC11(rt2x00dev, conf, rf, info);
		break;
	case RF3052:
		FUNC6(rt2x00dev, conf, rf, info);
		break;
	case RF3053:
		FUNC7(rt2x00dev, conf, rf, info);
		break;
	case RF3290:
		FUNC8(rt2x00dev, conf, rf, info);
		break;
	case RF3322:
		FUNC9(rt2x00dev, conf, rf, info);
		break;
	case RF3853:
		FUNC10(rt2x00dev, conf, rf, info);
		break;
	case RF3070:
	case RF5350:
	case RF5360:
	case RF5362:
	case RF5370:
	case RF5372:
	case RF5390:
	case RF5392:
		FUNC12(rt2x00dev, conf, rf, info);
		break;
	case RF5592:
		FUNC13(rt2x00dev, conf, rf, info);
		break;
	case RF7620:
		FUNC14(rt2x00dev, conf, rf, info);
		break;
	default:
		FUNC5(rt2x00dev, conf, rf, info);
	}

	if (FUNC26(rt2x00dev, RF3070) ||
	    FUNC26(rt2x00dev, RF3290) ||
	    FUNC26(rt2x00dev, RF3322) ||
	    FUNC26(rt2x00dev, RF5350) ||
	    FUNC26(rt2x00dev, RF5360) ||
	    FUNC26(rt2x00dev, RF5362) ||
	    FUNC26(rt2x00dev, RF5370) ||
	    FUNC26(rt2x00dev, RF5372) ||
	    FUNC26(rt2x00dev, RF5390) ||
	    FUNC26(rt2x00dev, RF5392)) {
		rfcsr = FUNC18(rt2x00dev, 30);
		if (FUNC26(rt2x00dev, RF3322)) {
			FUNC30(&rfcsr, RF3322_RFCSR30_TX_H20M,
					  FUNC0(conf));
			FUNC30(&rfcsr, RF3322_RFCSR30_RX_H20M,
					  FUNC0(conf));
		} else {
			FUNC30(&rfcsr, RFCSR30_TX_H20M,
					  FUNC0(conf));
			FUNC30(&rfcsr, RFCSR30_RX_H20M,
					  FUNC0(conf));
		}
		FUNC19(rt2x00dev, 30, rfcsr);

		rfcsr = FUNC18(rt2x00dev, 3);
		FUNC30(&rfcsr, RFCSR3_VCOCAL_EN, 1);
		FUNC19(rt2x00dev, 3, rfcsr);
	}

	/*
	 * Change BBP settings
	 */

	if (FUNC27(rt2x00dev, RT3352)) {
		FUNC3(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);

		FUNC3(rt2x00dev, 27, 0x0);
		FUNC3(rt2x00dev, 66, 0x26 + rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 27, 0x20);
		FUNC3(rt2x00dev, 66, 0x26 + rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 86, 0x38);
		FUNC3(rt2x00dev, 83, 0x6a);
	} else if (FUNC27(rt2x00dev, RT3593)) {
		if (rf->channel > 14) {
			/* Disable CCK Packet detection on 5GHz */
			FUNC3(rt2x00dev, 70, 0x00);
		} else {
			FUNC3(rt2x00dev, 70, 0x0a);
		}

		if (FUNC0(conf))
			FUNC3(rt2x00dev, 105, 0x04);
		else
			FUNC3(rt2x00dev, 105, 0x34);

		FUNC3(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 77, 0x98);
	} else if (FUNC27(rt2x00dev, RT3883)) {
		FUNC3(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);

		if (rt2x00dev->default_ant.rx_chain_num > 1)
			FUNC3(rt2x00dev, 86, 0x46);
		else
			FUNC3(rt2x00dev, 86, 0);
	} else {
		FUNC3(rt2x00dev, 62, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 63, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 64, 0x37 - rt2x00dev->lna_gain);
		FUNC3(rt2x00dev, 86, 0);
	}

	if (rf->channel <= 14) {
		if (!FUNC27(rt2x00dev, RT5390) &&
		    !FUNC27(rt2x00dev, RT5392) &&
		    !FUNC27(rt2x00dev, RT6352)) {
			if (FUNC23(rt2x00dev)) {
				FUNC3(rt2x00dev, 82, 0x62);
				FUNC3(rt2x00dev, 82, 0x62);
				FUNC3(rt2x00dev, 75, 0x46);
			} else {
				if (FUNC27(rt2x00dev, RT3593))
					FUNC3(rt2x00dev, 82, 0x62);
				else
					FUNC3(rt2x00dev, 82, 0x84);
				FUNC3(rt2x00dev, 75, 0x50);
			}
			if (FUNC27(rt2x00dev, RT3593) ||
			    FUNC27(rt2x00dev, RT3883))
				FUNC3(rt2x00dev, 83, 0x8a);
		}

	} else {
		if (FUNC27(rt2x00dev, RT3572))
			FUNC3(rt2x00dev, 82, 0x94);
		else if (FUNC27(rt2x00dev, RT3593) ||
			 FUNC27(rt2x00dev, RT3883))
			FUNC3(rt2x00dev, 82, 0x82);
		else if (!FUNC27(rt2x00dev, RT6352))
			FUNC3(rt2x00dev, 82, 0xf2);

		if (FUNC27(rt2x00dev, RT3593) ||
		    FUNC27(rt2x00dev, RT3883))
			FUNC3(rt2x00dev, 83, 0x9a);

		if (FUNC22(rt2x00dev))
			FUNC3(rt2x00dev, 75, 0x46);
		else
			FUNC3(rt2x00dev, 75, 0x50);
	}

	reg = FUNC16(rt2x00dev, TX_BAND_CFG);
	FUNC29(&reg, TX_BAND_CFG_HT40_MINUS, FUNC1(conf));
	FUNC29(&reg, TX_BAND_CFG_A, rf->channel > 14);
	FUNC29(&reg, TX_BAND_CFG_BG, rf->channel <= 14);
	FUNC17(rt2x00dev, TX_BAND_CFG, reg);

	if (FUNC27(rt2x00dev, RT3572))
		FUNC19(rt2x00dev, 8, 0);

	if (FUNC27(rt2x00dev, RT6352)) {
		tx_pin = FUNC16(rt2x00dev, TX_PIN_CFG);
		FUNC29(&tx_pin, TX_PIN_CFG_RFRX_EN, 1);
	} else {
		tx_pin = 0;
	}

	switch (rt2x00dev->default_ant.tx_chain_num) {
	case 3:
		/* Turn on tertiary PAs */
		FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_A2_EN,
				   rf->channel > 14);
		FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_G2_EN,
				   rf->channel <= 14);
		/* fall-through */
	case 2:
		/* Turn on secondary PAs */
		FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN,
				   rf->channel > 14);
		FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN,
				   rf->channel <= 14);
		/* fall-through */
	case 1:
		/* Turn on primary PAs */
		FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN,
				   rf->channel > 14);
		if (FUNC21(rt2x00dev))
			FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
		else
			FUNC29(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN,
					   rf->channel <= 14);
		break;
	}

	switch (rt2x00dev->default_ant.rx_chain_num) {
	case 3:
		/* Turn on tertiary LNAs */
		FUNC29(&tx_pin, TX_PIN_CFG_LNA_PE_A2_EN, 1);
		FUNC29(&tx_pin, TX_PIN_CFG_LNA_PE_G2_EN, 1);
		/* fall-through */
	case 2:
		/* Turn on secondary LNAs */
		FUNC29(&tx_pin, TX_PIN_CFG_LNA_PE_A1_EN, 1);
		FUNC29(&tx_pin, TX_PIN_CFG_LNA_PE_G1_EN, 1);
		/* fall-through */
	case 1:
		/* Turn on primary LNAs */
		FUNC29(&tx_pin, TX_PIN_CFG_LNA_PE_A0_EN, 1);
		FUNC29(&tx_pin, TX_PIN_CFG_LNA_PE_G0_EN, 1);
		break;
	}

	FUNC29(&tx_pin, TX_PIN_CFG_RFTR_EN, 1);
	FUNC29(&tx_pin, TX_PIN_CFG_TRSW_EN, 1);

	FUNC17(rt2x00dev, TX_PIN_CFG, tx_pin);

	if (FUNC27(rt2x00dev, RT3572)) {
		FUNC19(rt2x00dev, 8, 0x80);

		/* AGC init */
		if (rf->channel <= 14)
			reg = 0x1c + (2 * rt2x00dev->lna_gain);
		else
			reg = 0x22 + ((rt2x00dev->lna_gain * 5) / 3);

		FUNC4(rt2x00dev, 66, reg);
	}

	if (FUNC27(rt2x00dev, RT3593)) {
		reg = FUNC16(rt2x00dev, GPIO_CTRL);

		/* Band selection */
		if (FUNC25(rt2x00dev) ||
		    FUNC24(rt2x00dev)) {
			/* GPIO #8 controls all paths */
			FUNC29(&reg, GPIO_CTRL_DIR8, 0);
			if (rf->channel <= 14)
				FUNC29(&reg, GPIO_CTRL_VAL8, 1);
			else
				FUNC29(&reg, GPIO_CTRL_VAL8, 0);
		}

		/* LNA PE control. */
		if (FUNC25(rt2x00dev)) {
			/* GPIO #4 controls PE0 and PE1,
			 * GPIO #7 controls PE2
			 */
			FUNC29(&reg, GPIO_CTRL_DIR4, 0);
			FUNC29(&reg, GPIO_CTRL_DIR7, 0);

			FUNC29(&reg, GPIO_CTRL_VAL4, 1);
			FUNC29(&reg, GPIO_CTRL_VAL7, 1);
		} else if (FUNC24(rt2x00dev)) {
			/* GPIO #4 controls PE0, PE1 and PE2 */
			FUNC29(&reg, GPIO_CTRL_DIR4, 0);
			FUNC29(&reg, GPIO_CTRL_VAL4, 1);
		}

		FUNC17(rt2x00dev, GPIO_CTRL, reg);

		/* AGC init */
		if (rf->channel <= 14)
			reg = 0x1c + 2 * rt2x00dev->lna_gain;
		else
			reg = 0x22 + ((rt2x00dev->lna_gain * 5) / 3);

		FUNC4(rt2x00dev, 66, reg);

		FUNC32(1000, 1500);
	}

	if (FUNC27(rt2x00dev, RT3883)) {
		if (!FUNC0(conf))
			FUNC3(rt2x00dev, 105, 0x34);
		else
			FUNC3(rt2x00dev, 105, 0x04);

		/* AGC init */
		if (rf->channel <= 14)
			reg = 0x2e + rt2x00dev->lna_gain;
		else
			reg = 0x20 + ((rt2x00dev->lna_gain * 5) / 3);

		FUNC4(rt2x00dev, 66, reg);

		FUNC32(1000, 1500);
	}

	if (FUNC27(rt2x00dev, RT5592) || FUNC27(rt2x00dev, RT6352)) {
		reg = 0x10;
		if (!FUNC0(conf)) {
			if (FUNC27(rt2x00dev, RT6352) &&
			    FUNC23(rt2x00dev)) {
				reg |= 0x5;
			} else {
				reg |= 0xa;
			}
		}
		FUNC3(rt2x00dev, 195, 141);
		FUNC3(rt2x00dev, 196, reg);

		/* AGC init.
		 * Despite the vendor driver using different values here for
		 * RT6352 chip, we use 0x1c for now. This may have to be changed
		 * once TSSI got implemented.
		 */
		reg = (rf->channel <= 14 ? 0x1c : 0x24) + 2*rt2x00dev->lna_gain;
		FUNC4(rt2x00dev, 66, reg);

		FUNC15(rt2x00dev, rf->channel);
	}

	bbp = FUNC2(rt2x00dev, 4);
	FUNC30(&bbp, BBP4_BANDWIDTH, 2 * FUNC0(conf));
	FUNC3(rt2x00dev, 4, bbp);

	bbp = FUNC2(rt2x00dev, 3);
	FUNC30(&bbp, BBP3_HT40_MINUS, FUNC1(conf));
	FUNC3(rt2x00dev, 3, bbp);

	if (FUNC28(rt2x00dev, RT2860, REV_RT2860C)) {
		if (FUNC0(conf)) {
			FUNC3(rt2x00dev, 69, 0x1a);
			FUNC3(rt2x00dev, 70, 0x0a);
			FUNC3(rt2x00dev, 73, 0x16);
		} else {
			FUNC3(rt2x00dev, 69, 0x16);
			FUNC3(rt2x00dev, 70, 0x08);
			FUNC3(rt2x00dev, 73, 0x11);
		}
	}

	FUNC32(1000, 1500);

	/*
	 * Clear channel statistic counters
	 */
	reg = FUNC16(rt2x00dev, CH_IDLE_STA);
	reg = FUNC16(rt2x00dev, CH_BUSY_STA);
	reg = FUNC16(rt2x00dev, CH_BUSY_STA_SEC);

	/*
	 * Clear update flag
	 */
	if (FUNC27(rt2x00dev, RT3352) ||
	    FUNC27(rt2x00dev, RT5350)) {
		bbp = FUNC2(rt2x00dev, 49);
		FUNC30(&bbp, BBP49_UPDATE_FLAG, 0);
		FUNC3(rt2x00dev, 49, bbp);
	}
}