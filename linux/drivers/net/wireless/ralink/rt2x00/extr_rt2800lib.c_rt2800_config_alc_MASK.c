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
typedef  int u32 ;
typedef  int u16 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_channel {int max_power; int center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_INTERNAL_TX_ALC ; 
 int /*<<< orphan*/  EEPROM_TXPOWER_INIT ; 
 int /*<<< orphan*/  MAC_STATUS_CFG ; 
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  TX_ALC_CFG_0 ; 
 int /*<<< orphan*/  TX_ALC_CFG_0_CH_INIT_0 ; 
 int /*<<< orphan*/  TX_ALC_CFG_0_CH_INIT_1 ; 
 int /*<<< orphan*/  TX_ALC_CFG_0_LIMIT_0 ; 
 int /*<<< orphan*/  TX_ALC_CFG_0_LIMIT_1 ; 
 int /*<<< orphan*/  TX_ALC_CFG_1 ; 
 int /*<<< orphan*/  TX_ALC_CFG_1_TX_TEMP_COMP ; 
 int FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct rt2x00_dev *rt2x00dev,
			      struct ieee80211_channel *chan,
			      int power_level) {
	u16 eeprom, target_power, max_power;
	u32 mac_sys_ctrl, mac_status;
	u32 reg;
	u8 bbp;
	int i;

	/* hardware unit is 0.5dBm, limited to 23.5dBm */
	power_level *= 2;
	if (power_level > 0x2f)
		power_level = 0x2f;

	max_power = chan->max_power * 2;
	if (max_power > 0x2f)
		max_power = 0x2f;

	reg = FUNC3(rt2x00dev, TX_ALC_CFG_0);
	FUNC9(&reg, TX_ALC_CFG_0_CH_INIT_0, power_level);
	FUNC9(&reg, TX_ALC_CFG_0_CH_INIT_1, power_level);
	FUNC9(&reg, TX_ALC_CFG_0_LIMIT_0, max_power);
	FUNC9(&reg, TX_ALC_CFG_0_LIMIT_1, max_power);

	eeprom = FUNC2(rt2x00dev, EEPROM_NIC_CONF1);
	if (FUNC7(eeprom, EEPROM_NIC_CONF1_INTERNAL_TX_ALC)) {
		/* init base power by eeprom target power */
		target_power = FUNC2(rt2x00dev,
						  EEPROM_TXPOWER_INIT);
		FUNC9(&reg, TX_ALC_CFG_0_CH_INIT_0, target_power);
		FUNC9(&reg, TX_ALC_CFG_0_CH_INIT_1, target_power);
	}
	FUNC4(rt2x00dev, TX_ALC_CFG_0, reg);

	reg = FUNC3(rt2x00dev, TX_ALC_CFG_1);
	FUNC9(&reg, TX_ALC_CFG_1_TX_TEMP_COMP, 0);
	FUNC4(rt2x00dev, TX_ALC_CFG_1, reg);

	/* Save MAC SYS CTRL registers */
	mac_sys_ctrl = FUNC3(rt2x00dev, MAC_SYS_CTRL);
	/* Disable Tx/Rx */
	FUNC4(rt2x00dev, MAC_SYS_CTRL, 0);
	/* Check MAC Tx/Rx idle */
	for (i = 0; i < 10000; i++) {
		mac_status = FUNC3(rt2x00dev, MAC_STATUS_CFG);
		if (mac_status & 0x3)
			FUNC11(50, 200);
		else
			break;
	}

	if (i == 10000)
		FUNC10(rt2x00dev, "Wait MAC Status to MAX !!!\n");

	if (chan->center_freq > 2457) {
		bbp = FUNC0(rt2x00dev, 30);
		bbp = 0x40;
		FUNC1(rt2x00dev, 30, bbp);
		FUNC5(rt2x00dev, 39, 0);
		if (FUNC8(rt2x00dev))
			FUNC5(rt2x00dev, 42, 0xfb);
		else
			FUNC5(rt2x00dev, 42, 0x7b);
	} else {
		bbp = FUNC0(rt2x00dev, 30);
		bbp = 0x1f;
		FUNC1(rt2x00dev, 30, bbp);
		FUNC5(rt2x00dev, 39, 0x80);
		if (FUNC8(rt2x00dev))
			FUNC5(rt2x00dev, 42, 0xdb);
		else
			FUNC5(rt2x00dev, 42, 0x5b);
	}
	FUNC4(rt2x00dev, MAC_SYS_CTRL, mac_sys_ctrl);

	FUNC6(rt2x00dev);
}