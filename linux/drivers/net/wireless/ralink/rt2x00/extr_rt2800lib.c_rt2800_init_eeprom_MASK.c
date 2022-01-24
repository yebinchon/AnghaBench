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
typedef  int u16 ;
struct TYPE_2__ {void* rx; void* tx; scalar_t__ rx_chain_num; scalar_t__ tx_chain_num; } ;
struct rt2x00_dev {int led_mcu_reg; int /*<<< orphan*/  cap_flags; int /*<<< orphan*/  led_qual; int /*<<< orphan*/  led_assoc; int /*<<< orphan*/  led_radio; scalar_t__ freq_offset; TYPE_1__ default_ant; } ;

/* Variables and functions */
 void* ANTENNA_A ; 
 void* ANTENNA_B ; 
 void* ANTENNA_HW_DIVERSITY ; 
 int /*<<< orphan*/  CAPABILITY_BT_COEXIST ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_A ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_BG ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_PA_TX0 ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_PA_TX1 ; 
 int /*<<< orphan*/  CAPABILITY_HW_BUTTON ; 
 int /*<<< orphan*/  CAPABILITY_POWER_LIMIT ; 
 int /*<<< orphan*/  EEPROM_CHIP_ID ; 
 int /*<<< orphan*/  EEPROM_EIRP_MAX_TX_POWER ; 
 int /*<<< orphan*/  EEPROM_EIRP_MAX_TX_POWER_2GHZ ; 
 int /*<<< orphan*/  EEPROM_FREQ ; 
 int /*<<< orphan*/  EEPROM_FREQ_OFFSET ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RF_TYPE ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_TXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_BT_COEXIST ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_LNA_2G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_LNA_5G ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_TX0_PA_3352 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_EXTERNAL_TX1_PA_3352 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_HW_RADIO ; 
 scalar_t__ EIRP_MAX_TX_POWER_LIMIT ; 
 int ENODEV ; 
 int /*<<< orphan*/  LED_TYPE_ASSOC ; 
 int /*<<< orphan*/  LED_TYPE_QUALITY ; 
 int /*<<< orphan*/  LED_TYPE_RADIO ; 
 int /*<<< orphan*/  REV_RT5370G ; 
 int /*<<< orphan*/  REV_RT5390R ; 
#define  RF2020 151 
#define  RF2720 150 
#define  RF2750 149 
#define  RF2820 148 
#define  RF2850 147 
#define  RF3020 146 
#define  RF3021 145 
#define  RF3022 144 
#define  RF3052 143 
#define  RF3053 142 
#define  RF3070 141 
#define  RF3290 140 
#define  RF3320 139 
#define  RF3322 138 
#define  RF3853 137 
#define  RF5350 136 
#define  RF5360 135 
#define  RF5362 134 
#define  RF5370 133 
#define  RF5372 132 
#define  RF5390 131 
#define  RF5392 130 
#define  RF5592 129 
#define  RF7620 128 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  RT3290 ; 
 int /*<<< orphan*/  RT3352 ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  RT3883 ; 
 int /*<<< orphan*/  RT5350 ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  RT6352 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int) ; 

__attribute__((used)) static int FUNC8(struct rt2x00_dev *rt2x00dev)
{
	u16 value;
	u16 eeprom;
	u16 rf;

	/*
	 * Read EEPROM word for configuration.
	 */
	eeprom = FUNC1(rt2x00dev, EEPROM_NIC_CONF0);

	/*
	 * Identify RF chipset by EEPROM value
	 * RT28xx/RT30xx: defined in "EEPROM_NIC_CONF0_RF_TYPE" field
	 * RT53xx: defined in "EEPROM_CHIP_ID" field
	 */
	if (FUNC5(rt2x00dev, RT3290) ||
	    FUNC5(rt2x00dev, RT5390) ||
	    FUNC5(rt2x00dev, RT5392) ||
	    FUNC5(rt2x00dev, RT6352))
		rf = FUNC1(rt2x00dev, EEPROM_CHIP_ID);
	else if (FUNC5(rt2x00dev, RT3352))
		rf = RF3322;
	else if (FUNC5(rt2x00dev, RT3883))
		rf = RF3853;
	else if (FUNC5(rt2x00dev, RT5350))
		rf = RF5350;
	else
		rf = FUNC4(eeprom, EEPROM_NIC_CONF0_RF_TYPE);

	switch (rf) {
	case RF2820:
	case RF2850:
	case RF2720:
	case RF2750:
	case RF3020:
	case RF2020:
	case RF3021:
	case RF3022:
	case RF3052:
	case RF3053:
	case RF3070:
	case RF3290:
	case RF3320:
	case RF3322:
	case RF3853:
	case RF5350:
	case RF5360:
	case RF5362:
	case RF5370:
	case RF5372:
	case RF5390:
	case RF5392:
	case RF5592:
	case RF7620:
		break;
	default:
		FUNC3(rt2x00dev, "Invalid RF chipset 0x%04x detected\n",
			   rf);
		return -ENODEV;
	}

	FUNC7(rt2x00dev, rf);

	/*
	 * Identify default antenna configuration.
	 */
	rt2x00dev->default_ant.tx_chain_num =
	    FUNC4(eeprom, EEPROM_NIC_CONF0_TXPATH);
	rt2x00dev->default_ant.rx_chain_num =
	    FUNC4(eeprom, EEPROM_NIC_CONF0_RXPATH);

	eeprom = FUNC1(rt2x00dev, EEPROM_NIC_CONF1);

	if (FUNC5(rt2x00dev, RT3070) ||
	    FUNC5(rt2x00dev, RT3090) ||
	    FUNC5(rt2x00dev, RT3352) ||
	    FUNC5(rt2x00dev, RT3390)) {
		value = FUNC4(eeprom,
				EEPROM_NIC_CONF1_ANT_DIVERSITY);
		switch (value) {
		case 0:
		case 1:
		case 2:
			rt2x00dev->default_ant.tx = ANTENNA_A;
			rt2x00dev->default_ant.rx = ANTENNA_A;
			break;
		case 3:
			rt2x00dev->default_ant.tx = ANTENNA_A;
			rt2x00dev->default_ant.rx = ANTENNA_B;
			break;
		}
	} else {
		rt2x00dev->default_ant.tx = ANTENNA_A;
		rt2x00dev->default_ant.rx = ANTENNA_A;
	}

	/* These chips have hardware RX antenna diversity */
	if (FUNC6(rt2x00dev, RT5390, REV_RT5390R) ||
	    FUNC6(rt2x00dev, RT5390, REV_RT5370G)) {
		rt2x00dev->default_ant.tx = ANTENNA_HW_DIVERSITY; /* Unused */
		rt2x00dev->default_ant.rx = ANTENNA_HW_DIVERSITY; /* Unused */
	}

	/*
	 * Determine external LNA informations.
	 */
	if (FUNC4(eeprom, EEPROM_NIC_CONF1_EXTERNAL_LNA_5G))
		FUNC0(CAPABILITY_EXTERNAL_LNA_A, &rt2x00dev->cap_flags);
	if (FUNC4(eeprom, EEPROM_NIC_CONF1_EXTERNAL_LNA_2G))
		FUNC0(CAPABILITY_EXTERNAL_LNA_BG, &rt2x00dev->cap_flags);

	/*
	 * Detect if this device has an hardware controlled radio.
	 */
	if (FUNC4(eeprom, EEPROM_NIC_CONF1_HW_RADIO))
		FUNC0(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags);

	/*
	 * Detect if this device has Bluetooth co-existence.
	 */
	if (!FUNC5(rt2x00dev, RT3352) &&
	    FUNC4(eeprom, EEPROM_NIC_CONF1_BT_COEXIST))
		FUNC0(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags);

	/*
	 * Read frequency offset and RF programming sequence.
	 */
	eeprom = FUNC1(rt2x00dev, EEPROM_FREQ);
	rt2x00dev->freq_offset = FUNC4(eeprom, EEPROM_FREQ_OFFSET);

	/*
	 * Store led settings, for correct led behaviour.
	 */
#ifdef CONFIG_RT2X00_LIB_LEDS
	rt2800_init_led(rt2x00dev, &rt2x00dev->led_radio, LED_TYPE_RADIO);
	rt2800_init_led(rt2x00dev, &rt2x00dev->led_assoc, LED_TYPE_ASSOC);
	rt2800_init_led(rt2x00dev, &rt2x00dev->led_qual, LED_TYPE_QUALITY);

	rt2x00dev->led_mcu_reg = eeprom;
#endif /* CONFIG_RT2X00_LIB_LEDS */

	/*
	 * Check if support EIRP tx power limit feature.
	 */
	eeprom = FUNC1(rt2x00dev, EEPROM_EIRP_MAX_TX_POWER);

	if (FUNC4(eeprom, EEPROM_EIRP_MAX_TX_POWER_2GHZ) <
					EIRP_MAX_TX_POWER_LIMIT)
		FUNC0(CAPABILITY_POWER_LIMIT, &rt2x00dev->cap_flags);

	/*
	 * Detect if device uses internal or external PA
	 */
	eeprom = FUNC1(rt2x00dev, EEPROM_NIC_CONF1);

	if (FUNC5(rt2x00dev, RT3352)) {
		if (FUNC4(eeprom,
		    EEPROM_NIC_CONF1_EXTERNAL_TX0_PA_3352))
		    FUNC0(CAPABILITY_EXTERNAL_PA_TX0,
			      &rt2x00dev->cap_flags);
		if (FUNC4(eeprom,
		    EEPROM_NIC_CONF1_EXTERNAL_TX1_PA_3352))
		    FUNC0(CAPABILITY_EXTERNAL_PA_TX1,
			      &rt2x00dev->cap_flags);
	}

	return 0;
}