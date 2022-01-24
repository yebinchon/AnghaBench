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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int /*<<< orphan*/  flags; } ;
struct ieee80211_channel {int band; } ;
typedef  int /*<<< orphan*/  regs ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CHANNEL_HT40 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE0 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE1 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE2 ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_BYRATE_RATE3 ; 
 int NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  TX_PWR_CFG_0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_CCK1_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_CCK1_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_CCK5_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_CCK5_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_EXT ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_EXT_CCK1_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_EXT_CCK5_CH2 ; 
 size_t TX_PWR_CFG_0_EXT_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_EXT_OFDM12_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_EXT_OFDM6_CH2 ; 
 size_t TX_PWR_CFG_0_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_OFDM12_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_OFDM12_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_OFDM6_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_0_OFDM6_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_EXT ; 
 size_t TX_PWR_CFG_1_EXT_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_EXT_MCS0_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_EXT_MCS2_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_EXT_OFDM24_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_EXT_OFDM48_CH2 ; 
 size_t TX_PWR_CFG_1_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_MCS0_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_MCS0_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_MCS2_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_MCS2_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_OFDM24_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_OFDM24_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_OFDM48_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_1_OFDM48_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_EXT ; 
 size_t TX_PWR_CFG_2_EXT_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_EXT_MCS10_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_EXT_MCS4_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_EXT_MCS6_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_EXT_MCS8_CH2 ; 
 size_t TX_PWR_CFG_2_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS10_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS10_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS4_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS4_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS6_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS6_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS8_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_2_MCS8_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_EXT ; 
 size_t TX_PWR_CFG_3_EXT_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_EXT_MCS12_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_EXT_MCS14_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_EXT_STBC0_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_EXT_STBC2_CH2 ; 
 size_t TX_PWR_CFG_3_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_MCS12_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_MCS12_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_MCS14_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_MCS14_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_STBC0_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_STBC0_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_STBC2_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_3_STBC2_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_4 ; 
 int /*<<< orphan*/  TX_PWR_CFG_4_EXT ; 
 size_t TX_PWR_CFG_4_EXT_IDX ; 
 size_t TX_PWR_CFG_4_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_5 ; 
 size_t TX_PWR_CFG_5_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_5_MCS16_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_5_MCS16_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_5_MCS16_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_5_MCS18_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_5_MCS18_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_5_MCS18_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_6 ; 
 size_t TX_PWR_CFG_6_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_6_MCS20_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_6_MCS20_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_6_MCS20_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_6_MCS22_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_6_MCS22_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_6_MCS22_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_7 ; 
 size_t TX_PWR_CFG_7_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_7_MCS7_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_7_MCS7_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_7_MCS7_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_7_OFDM54_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_7_OFDM54_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_7_OFDM54_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_8 ; 
 size_t TX_PWR_CFG_8_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_8_MCS15_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_8_MCS15_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_8_MCS15_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_8_MCS23_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_8_MCS23_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_8_MCS23_CH2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_9 ; 
 size_t TX_PWR_CFG_9_IDX ; 
 int /*<<< orphan*/  TX_PWR_CFG_9_STBC7_CH0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_9_STBC7_CH1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_9_STBC7_CH2 ; 
 int TX_PWR_CFG_IDX_COUNT ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE0 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE1 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE2 ; 
 int /*<<< orphan*/  TX_PWR_CFG_RATE3 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,char*,char,char,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_channel *chan,
					 int power_level)
{
	u8 txpower;
	u16 eeprom;
	u32 regs[TX_PWR_CFG_IDX_COUNT];
	unsigned int offset;
	enum nl80211_band band = chan->band;
	int delta;
	int i;

	FUNC0(regs, '\0', sizeof(regs));

	/* TODO: adapt TX power reduction from the rt28xx code */

	/* calculate temperature compensation delta */
	delta = FUNC3(rt2x00dev);

	if (band == NL80211_BAND_5GHZ)
		offset = 16;
	else
		offset = 0;

	if (FUNC8(CONFIG_CHANNEL_HT40, &rt2x00dev->flags))
		offset += 8;

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset);

	/* CCK 1MBS,2MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 1, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_CCK1_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_CCK1_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_EXT_IDX],
			   TX_PWR_CFG_0_EXT_CCK1_CH2, txpower);

	/* CCK 5.5MBS,11MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 1, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_CCK5_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_CCK5_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_EXT_IDX],
			   TX_PWR_CFG_0_EXT_CCK5_CH2, txpower);

	/* OFDM 6MBS,9MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_OFDM6_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_OFDM6_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_EXT_IDX],
			   TX_PWR_CFG_0_EXT_OFDM6_CH2, txpower);

	/* OFDM 12MBS,18MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE3);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_OFDM12_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_IDX],
			   TX_PWR_CFG_0_OFDM12_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_0_EXT_IDX],
			   TX_PWR_CFG_0_EXT_OFDM12_CH2, txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 1);

	/* OFDM 24MBS,36MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_OFDM24_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_OFDM24_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_EXT_IDX],
			   TX_PWR_CFG_1_EXT_OFDM24_CH2, txpower);

	/* OFDM 48MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_OFDM48_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_OFDM48_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_EXT_IDX],
			   TX_PWR_CFG_1_EXT_OFDM48_CH2, txpower);

	/* OFDM 54MBS */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_7_IDX],
			   TX_PWR_CFG_7_OFDM54_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_7_IDX],
			   TX_PWR_CFG_7_OFDM54_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_7_IDX],
			   TX_PWR_CFG_7_OFDM54_CH2, txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 2);

	/* MCS 0,1 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_MCS0_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_MCS0_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_EXT_IDX],
			   TX_PWR_CFG_1_EXT_MCS0_CH2, txpower);

	/* MCS 2,3 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_MCS2_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_IDX],
			   TX_PWR_CFG_1_MCS2_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_1_EXT_IDX],
			   TX_PWR_CFG_1_EXT_MCS2_CH2, txpower);

	/* MCS 4,5 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS4_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS4_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_EXT_IDX],
			   TX_PWR_CFG_2_EXT_MCS4_CH2, txpower);

	/* MCS 6 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE3);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS6_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS6_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_EXT_IDX],
			   TX_PWR_CFG_2_EXT_MCS6_CH2, txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 3);

	/* MCS 7 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_7_IDX],
			   TX_PWR_CFG_7_MCS7_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_7_IDX],
			   TX_PWR_CFG_7_MCS7_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_7_IDX],
			   TX_PWR_CFG_7_MCS7_CH2, txpower);

	/* MCS 8,9 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS8_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS8_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_EXT_IDX],
			   TX_PWR_CFG_2_EXT_MCS8_CH2, txpower);

	/* MCS 10,11 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS10_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_IDX],
			   TX_PWR_CFG_2_MCS10_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_2_EXT_IDX],
			   TX_PWR_CFG_2_EXT_MCS10_CH2, txpower);

	/* MCS 12,13 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE3);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_MCS12_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_MCS12_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_EXT_IDX],
			   TX_PWR_CFG_3_EXT_MCS12_CH2, txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 4);

	/* MCS 14 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_MCS14_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_MCS14_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_EXT_IDX],
			   TX_PWR_CFG_3_EXT_MCS14_CH2, txpower);

	/* MCS 15 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_8_IDX],
			   TX_PWR_CFG_8_MCS15_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_8_IDX],
			   TX_PWR_CFG_8_MCS15_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_8_IDX],
			   TX_PWR_CFG_8_MCS15_CH2, txpower);

	/* MCS 16,17 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_5_IDX],
			   TX_PWR_CFG_5_MCS16_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_5_IDX],
			   TX_PWR_CFG_5_MCS16_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_5_IDX],
			   TX_PWR_CFG_5_MCS16_CH2, txpower);

	/* MCS 18,19 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE3);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_5_IDX],
			   TX_PWR_CFG_5_MCS18_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_5_IDX],
			   TX_PWR_CFG_5_MCS18_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_5_IDX],
			   TX_PWR_CFG_5_MCS18_CH2, txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 5);

	/* MCS 20,21 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_6_IDX],
			   TX_PWR_CFG_6_MCS20_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_6_IDX],
			   TX_PWR_CFG_6_MCS20_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_6_IDX],
			   TX_PWR_CFG_6_MCS20_CH2, txpower);

	/* MCS 22 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_6_IDX],
			   TX_PWR_CFG_6_MCS22_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_6_IDX],
			   TX_PWR_CFG_6_MCS22_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_6_IDX],
			   TX_PWR_CFG_6_MCS22_CH2, txpower);

	/* MCS 23 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_8_IDX],
			   TX_PWR_CFG_8_MCS23_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_8_IDX],
			   TX_PWR_CFG_8_MCS23_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_8_IDX],
			   TX_PWR_CFG_8_MCS23_CH2, txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 6);

	/* STBC, MCS 0,1 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_STBC0_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_STBC0_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_EXT_IDX],
			   TX_PWR_CFG_3_EXT_STBC0_CH2, txpower);

	/* STBC, MCS 2,3 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE1);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_STBC2_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_IDX],
			   TX_PWR_CFG_3_STBC2_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_3_EXT_IDX],
			   TX_PWR_CFG_3_EXT_STBC2_CH2, txpower);

	/* STBC, MCS 4,5 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE2);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_4_IDX], TX_PWR_CFG_RATE0, txpower);
	FUNC7(&regs[TX_PWR_CFG_4_IDX], TX_PWR_CFG_RATE1, txpower);
	FUNC7(&regs[TX_PWR_CFG_4_EXT_IDX], TX_PWR_CFG_RATE0,
			   txpower);

	/* STBC, MCS 6 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE3);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_4_IDX], TX_PWR_CFG_RATE2, txpower);
	FUNC7(&regs[TX_PWR_CFG_4_IDX], TX_PWR_CFG_RATE3, txpower);
	FUNC7(&regs[TX_PWR_CFG_4_EXT_IDX], TX_PWR_CFG_RATE2,
			   txpower);

	/* read the next four txpower values */
	eeprom = FUNC2(rt2x00dev, EEPROM_TXPOWER_BYRATE,
					       offset + 7);

	/* STBC, MCS 7 */
	txpower = FUNC6(eeprom, EEPROM_TXPOWER_BYRATE_RATE0);
	txpower = FUNC1(rt2x00dev, 0, band, power_level,
					    txpower, delta);
	FUNC7(&regs[TX_PWR_CFG_9_IDX],
			   TX_PWR_CFG_9_STBC7_CH0, txpower);
	FUNC7(&regs[TX_PWR_CFG_9_IDX],
			   TX_PWR_CFG_9_STBC7_CH1, txpower);
	FUNC7(&regs[TX_PWR_CFG_9_IDX],
			   TX_PWR_CFG_9_STBC7_CH2, txpower);

	FUNC4(rt2x00dev, TX_PWR_CFG_0, regs[TX_PWR_CFG_0_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_1, regs[TX_PWR_CFG_1_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_2, regs[TX_PWR_CFG_2_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_3, regs[TX_PWR_CFG_3_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_4, regs[TX_PWR_CFG_4_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_5, regs[TX_PWR_CFG_5_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_6, regs[TX_PWR_CFG_6_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_7, regs[TX_PWR_CFG_7_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_8, regs[TX_PWR_CFG_8_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_9, regs[TX_PWR_CFG_9_IDX]);

	FUNC4(rt2x00dev, TX_PWR_CFG_0_EXT,
			      regs[TX_PWR_CFG_0_EXT_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_1_EXT,
			      regs[TX_PWR_CFG_1_EXT_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_2_EXT,
			      regs[TX_PWR_CFG_2_EXT_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_3_EXT,
			      regs[TX_PWR_CFG_3_EXT_IDX]);
	FUNC4(rt2x00dev, TX_PWR_CFG_4_EXT,
			      regs[TX_PWR_CFG_4_EXT_IDX]);

	for (i = 0; i < TX_PWR_CFG_IDX_COUNT; i++)
		FUNC5(rt2x00dev,
			   "band:%cGHz, BW:%c0MHz, TX_PWR_CFG_%d%s = %08lx\n",
			   (band == NL80211_BAND_5GHZ) ? '5' : '2',
			   (FUNC8(CONFIG_CHANNEL_HT40, &rt2x00dev->flags)) ?
								'4' : '2',
			   (i > TX_PWR_CFG_9_IDX) ?
					(i - TX_PWR_CFG_9_IDX - 1) : i,
			   (i > TX_PWR_CFG_9_IDX) ? "_EXT" : "",
			   (unsigned long) regs[i]);
}