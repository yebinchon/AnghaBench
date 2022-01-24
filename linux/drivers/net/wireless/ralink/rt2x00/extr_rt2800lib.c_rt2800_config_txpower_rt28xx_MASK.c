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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;
struct ieee80211_channel {int band; int /*<<< orphan*/  max_power; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  BBP1_TX_POWER_CTRL ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE0 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE1 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE2 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE3 ; 
 int EEPROM_TXPOWER_BYRATE_SIZE ; 
#define  RT2860 134 
#define  RT2872 133 
#define  RT2883 132 
#define  RT3070 131 
#define  RT3071 130 
#define  RT3090 129 
#define  RT3572 128 
 scalar_t__ TX_PWR_CFG_0 ; 
 scalar_t__ TX_PWR_CFG_4 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE3 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE4 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE5 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE6 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE7 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rt2x00_dev*) ; 
 int FUNC5 (struct rt2x00_dev*,int) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_channel *chan,
					 int power_level)
{
	u8 txpower, r1;
	u16 eeprom;
	u32 reg, offset;
	int i, is_rate_b, delta, power_ctrl;
	enum nl80211_band band = chan->band;

	/*
	 * Calculate HT40 compensation. For 40MHz we need to add or subtract
	 * value read from EEPROM (different for 2GHz and for 5GHz).
	 */
	delta = FUNC5(rt2x00dev, band);

	/*
	 * Calculate temperature compensation. Depends on measurement of current
	 * TSSI (Transmitter Signal Strength Indication) we know TX power (due
	 * to temperature or maybe other factors) is smaller or bigger than
	 * expected. We adjust it, based on TSSI reference and boundaries values
	 * provided in EEPROM.
	 */
	switch (rt2x00dev->chip.rt) {
	case RT2860:
	case RT2872:
	case RT2883:
	case RT3070:
	case RT3071:
	case RT3090:
	case RT3572:
		delta += FUNC4(rt2x00dev);
		break;
	default:
		/* TODO: temperature compensation code for other chips. */
		break;
	}

	/*
	 * Decrease power according to user settings, on devices with unknown
	 * maximum tx power. For other devices we take user power_level into
	 * consideration on rt2800_compensate_txpower().
	 */
	delta += FUNC6(rt2x00dev, power_level,
					      chan->max_power);

	/*
	 * BBP_R1 controls TX power for all rates, it allow to set the following
	 * gains -12, -6, 0, +6 dBm by setting values 2, 1, 0, 3 respectively.
	 *
	 * TODO: we do not use +6 dBm option to do not increase power beyond
	 * regulatory limit, however this could be utilized for devices with
	 * CAPABILITY_POWER_LIMIT.
	 */
	if (delta <= -12) {
		power_ctrl = 2;
		delta += 12;
	} else if (delta <= -6) {
		power_ctrl = 1;
		delta += 6;
	} else {
		power_ctrl = 0;
	}
	r1 = FUNC0(rt2x00dev, 1);
	FUNC11(&r1, BBP1_TX_POWER_CTRL, power_ctrl);
	FUNC1(rt2x00dev, 1, r1);

	offset = TX_PWR_CFG_0;

	for (i = 0; i < EEPROM_TXPOWER_BYRATE_SIZE; i += 2) {
		/* just to be safe */
		if (offset > TX_PWR_CFG_4)
			break;

		reg = FUNC7(rt2x00dev, offset);

		/* read the next four txpower values */
		eeprom = FUNC3(rt2x00dev,
						       EEPROM_TXPOWER_BYRATE,
						       i);

		is_rate_b = i ? 0 : 1;
		/*
		 * TX_PWR_CFG_0: 1MBS, TX_PWR_CFG_1: 24MBS,
		 * TX_PWR_CFG_2: MCS4, TX_PWR_CFG_3: MCS12,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE0);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE0, txpower);

		/*
		 * TX_PWR_CFG_0: 2MBS, TX_PWR_CFG_1: 36MBS,
		 * TX_PWR_CFG_2: MCS5, TX_PWR_CFG_3: MCS13,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE1);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE1, txpower);

		/*
		 * TX_PWR_CFG_0: 5.5MBS, TX_PWR_CFG_1: 48MBS,
		 * TX_PWR_CFG_2: MCS6,  TX_PWR_CFG_3: MCS14,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE2);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE2, txpower);

		/*
		 * TX_PWR_CFG_0: 11MBS, TX_PWR_CFG_1: 54MBS,
		 * TX_PWR_CFG_2: MCS7,  TX_PWR_CFG_3: MCS15,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE3);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE3, txpower);

		/* read the next four txpower values */
		eeprom = FUNC3(rt2x00dev,
						       EEPROM_TXPOWER_BYRATE,
						       i + 1);

		is_rate_b = 0;
		/*
		 * TX_PWR_CFG_0: 6MBS, TX_PWR_CFG_1: MCS0,
		 * TX_PWR_CFG_2: MCS8, TX_PWR_CFG_3: unknown,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE0);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE4, txpower);

		/*
		 * TX_PWR_CFG_0: 9MBS, TX_PWR_CFG_1: MCS1,
		 * TX_PWR_CFG_2: MCS9, TX_PWR_CFG_3: unknown,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE1);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE5, txpower);

		/*
		 * TX_PWR_CFG_0: 12MBS, TX_PWR_CFG_1: MCS2,
		 * TX_PWR_CFG_2: MCS10, TX_PWR_CFG_3: unknown,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE2);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE6, txpower);

		/*
		 * TX_PWR_CFG_0: 18MBS, TX_PWR_CFG_1: MCS3,
		 * TX_PWR_CFG_2: MCS11, TX_PWR_CFG_3: unknown,
		 * TX_PWR_CFG_4: unknown
		 */
		txpower = FUNC9(eeprom,
					     EEPROM_TXPOWER_BYRATE_RATE3);
		txpower = FUNC2(rt2x00dev, is_rate_b, band,
					     power_level, txpower, delta);
		FUNC10(&reg, TX_PWR_CFG_RATE7, txpower);

		FUNC8(rt2x00dev, offset, reg);

		/* next TX_PWR_CFG register */
		offset += 4;
	}
}