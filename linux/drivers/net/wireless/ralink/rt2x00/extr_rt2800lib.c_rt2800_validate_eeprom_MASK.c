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
typedef  int u16 ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int /*<<< orphan*/  txmixer_gain_5g; int /*<<< orphan*/  txmixer_gain_24g; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_EXT_LNA2 ; 
 int /*<<< orphan*/  EEPROM_EXT_LNA2_A1 ; 
 int /*<<< orphan*/  EEPROM_EXT_LNA2_A2 ; 
 int /*<<< orphan*/  EEPROM_FREQ ; 
 int /*<<< orphan*/  EEPROM_FREQ_LED_MODE ; 
 int /*<<< orphan*/  EEPROM_FREQ_LED_POLARITY ; 
 int /*<<< orphan*/  EEPROM_FREQ_OFFSET ; 
 int /*<<< orphan*/  EEPROM_LED_ACT_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_AG_CONF ; 
 int /*<<< orphan*/  EEPROM_LED_POLARITY ; 
 int /*<<< orphan*/  EEPROM_LNA ; 
 int /*<<< orphan*/  EEPROM_LNA_A0 ; 
 int /*<<< orphan*/  EEPROM_MAC_ADDR_0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RF_TYPE ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_TXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BROADBAND_EXT_LNA ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BT_COEXIST ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_SB_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BW40M_SB_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_CARDBUS_ACCEL ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_DAC_TEST ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_LNA_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_LNA_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_TX_ALC ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_HW_RADIO ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_INTERNAL_TX_ALC ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_WPS_PBC ; 
 int /*<<< orphan*/  EEPROM_RSSI_A ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2_LNA_A2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2_OFFSET2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A_OFFSET0 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A_OFFSET1 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2_LNA_A1 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2_OFFSET2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG_OFFSET0 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG_OFFSET1 ; 
 int LED_MODE_TXRX_ACTIVITY ; 
 int RF2820 ; 
 int /*<<< orphan*/  RT2860 ; 
 int /*<<< orphan*/  RT2872 ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT3883 ; 
 int FUNC0 (int) ; 
 int* FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int FUNC6 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,char*,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*,int*) ; 

__attribute__((used)) static int FUNC12(struct rt2x00_dev *rt2x00dev)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u16 word;
	u8 *mac;
	u8 default_lna_gain;
	int retval;

	/*
	 * Read the EEPROM.
	 */
	retval = FUNC6(rt2x00dev);
	if (retval)
		return retval;

	/*
	 * Start validation of the data that has been read.
	 */
	mac = FUNC1(rt2x00dev, EEPROM_MAC_ADDR_0);
	FUNC11(rt2x00dev, mac);

	word = FUNC2(rt2x00dev, EEPROM_NIC_CONF0);
	if (word == 0xffff) {
		FUNC10(&word, EEPROM_NIC_CONF0_RXPATH, 2);
		FUNC10(&word, EEPROM_NIC_CONF0_TXPATH, 1);
		FUNC10(&word, EEPROM_NIC_CONF0_RF_TYPE, RF2820);
		FUNC3(rt2x00dev, EEPROM_NIC_CONF0, word);
		FUNC7(rt2x00dev, "Antenna: 0x%04x\n", word);
	} else if (FUNC9(rt2x00dev, RT2860) ||
		   FUNC9(rt2x00dev, RT2872)) {
		/*
		 * There is a max of 2 RX streams for RT28x0 series
		 */
		if (FUNC8(word, EEPROM_NIC_CONF0_RXPATH) > 2)
			FUNC10(&word, EEPROM_NIC_CONF0_RXPATH, 2);
		FUNC3(rt2x00dev, EEPROM_NIC_CONF0, word);
	}

	word = FUNC2(rt2x00dev, EEPROM_NIC_CONF1);
	if (word == 0xffff) {
		FUNC10(&word, EEPROM_NIC_CONF1_HW_RADIO, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_EXTERNAL_TX_ALC, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_CARDBUS_ACCEL, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_SB_2G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_SB_5G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_WPS_PBC, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_2G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BW40M_5G, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BROADBAND_EXT_LNA, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_ANT_DIVERSITY, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_INTERNAL_TX_ALC, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_BT_COEXIST, 0);
		FUNC10(&word, EEPROM_NIC_CONF1_DAC_TEST, 0);
		FUNC3(rt2x00dev, EEPROM_NIC_CONF1, word);
		FUNC7(rt2x00dev, "NIC: 0x%04x\n", word);
	}

	word = FUNC2(rt2x00dev, EEPROM_FREQ);
	if ((word & 0x00ff) == 0x00ff) {
		FUNC10(&word, EEPROM_FREQ_OFFSET, 0);
		FUNC3(rt2x00dev, EEPROM_FREQ, word);
		FUNC7(rt2x00dev, "Freq: 0x%04x\n", word);
	}
	if ((word & 0xff00) == 0xff00) {
		FUNC10(&word, EEPROM_FREQ_LED_MODE,
				   LED_MODE_TXRX_ACTIVITY);
		FUNC10(&word, EEPROM_FREQ_LED_POLARITY, 0);
		FUNC3(rt2x00dev, EEPROM_FREQ, word);
		FUNC3(rt2x00dev, EEPROM_LED_AG_CONF, 0x5555);
		FUNC3(rt2x00dev, EEPROM_LED_ACT_CONF, 0x2221);
		FUNC3(rt2x00dev, EEPROM_LED_POLARITY, 0xa9f8);
		FUNC7(rt2x00dev, "Led Mode: 0x%04x\n", word);
	}

	/*
	 * During the LNA validation we are going to use
	 * lna0 as correct value. Note that EEPROM_LNA
	 * is never validated.
	 */
	word = FUNC2(rt2x00dev, EEPROM_LNA);
	default_lna_gain = FUNC8(word, EEPROM_LNA_A0);

	word = FUNC2(rt2x00dev, EEPROM_RSSI_BG);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_BG_OFFSET0)) > 10)
		FUNC10(&word, EEPROM_RSSI_BG_OFFSET0, 0);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_BG_OFFSET1)) > 10)
		FUNC10(&word, EEPROM_RSSI_BG_OFFSET1, 0);
	FUNC3(rt2x00dev, EEPROM_RSSI_BG, word);

	drv_data->txmixer_gain_24g = FUNC4(rt2x00dev);

	word = FUNC2(rt2x00dev, EEPROM_RSSI_BG2);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_BG2_OFFSET2)) > 10)
		FUNC10(&word, EEPROM_RSSI_BG2_OFFSET2, 0);
	if (!FUNC9(rt2x00dev, RT3593) &&
	    !FUNC9(rt2x00dev, RT3883)) {
		if (FUNC8(word, EEPROM_RSSI_BG2_LNA_A1) == 0x00 ||
		    FUNC8(word, EEPROM_RSSI_BG2_LNA_A1) == 0xff)
			FUNC10(&word, EEPROM_RSSI_BG2_LNA_A1,
					   default_lna_gain);
	}
	FUNC3(rt2x00dev, EEPROM_RSSI_BG2, word);

	drv_data->txmixer_gain_5g = FUNC5(rt2x00dev);

	word = FUNC2(rt2x00dev, EEPROM_RSSI_A);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_A_OFFSET0)) > 10)
		FUNC10(&word, EEPROM_RSSI_A_OFFSET0, 0);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_A_OFFSET1)) > 10)
		FUNC10(&word, EEPROM_RSSI_A_OFFSET1, 0);
	FUNC3(rt2x00dev, EEPROM_RSSI_A, word);

	word = FUNC2(rt2x00dev, EEPROM_RSSI_A2);
	if (FUNC0(FUNC8(word, EEPROM_RSSI_A2_OFFSET2)) > 10)
		FUNC10(&word, EEPROM_RSSI_A2_OFFSET2, 0);
	if (!FUNC9(rt2x00dev, RT3593) &&
	    !FUNC9(rt2x00dev, RT3883)) {
		if (FUNC8(word, EEPROM_RSSI_A2_LNA_A2) == 0x00 ||
		    FUNC8(word, EEPROM_RSSI_A2_LNA_A2) == 0xff)
			FUNC10(&word, EEPROM_RSSI_A2_LNA_A2,
					   default_lna_gain);
	}
	FUNC3(rt2x00dev, EEPROM_RSSI_A2, word);

	if (FUNC9(rt2x00dev, RT3593) ||
	    FUNC9(rt2x00dev, RT3883)) {
		word = FUNC2(rt2x00dev, EEPROM_EXT_LNA2);
		if (FUNC8(word, EEPROM_EXT_LNA2_A1) == 0x00 ||
		    FUNC8(word, EEPROM_EXT_LNA2_A1) == 0xff)
			FUNC10(&word, EEPROM_EXT_LNA2_A1,
					   default_lna_gain);
		if (FUNC8(word, EEPROM_EXT_LNA2_A2) == 0x00 ||
		    FUNC8(word, EEPROM_EXT_LNA2_A2) == 0xff)
			FUNC10(&word, EEPROM_EXT_LNA2_A1,
					   default_lna_gain);
		FUNC3(rt2x00dev, EEPROM_EXT_LNA2, word);
	}

	return 0;
}