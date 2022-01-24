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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {scalar_t__ curr_band; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_FREQ ; 
 int /*<<< orphan*/  EEPROM_FREQ_LED_MODE ; 
 int /*<<< orphan*/  GPIO_SWITCH ; 
 int /*<<< orphan*/  GPIO_SWITCH_0 ; 
 int /*<<< orphan*/  GPIO_SWITCH_1 ; 
 int /*<<< orphan*/  LED_CFG ; 
 int /*<<< orphan*/  LED_CFG_G_LED_MODE ; 
 int /*<<< orphan*/  LED_CFG_LED_POLAR ; 
 int /*<<< orphan*/  LED_CFG_R_LED_MODE ; 
 int /*<<< orphan*/  MCU_BAND_SELECT ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;
	u16 eeprom;
	u8 led_ctrl, led_g_mode, led_r_mode;

	reg = FUNC2(rt2x00dev, GPIO_SWITCH);
	if (rt2x00dev->curr_band == NL80211_BAND_5GHZ) {
		FUNC6(&reg, GPIO_SWITCH_0, 1);
		FUNC6(&reg, GPIO_SWITCH_1, 1);
	} else {
		FUNC6(&reg, GPIO_SWITCH_0, 0);
		FUNC6(&reg, GPIO_SWITCH_1, 0);
	}
	FUNC3(rt2x00dev, GPIO_SWITCH, reg);

	reg = FUNC2(rt2x00dev, LED_CFG);
	led_g_mode = FUNC5(reg, LED_CFG_LED_POLAR) ? 3 : 0;
	led_r_mode = FUNC5(reg, LED_CFG_LED_POLAR) ? 0 : 3;
	if (led_g_mode != FUNC5(reg, LED_CFG_G_LED_MODE) ||
	    led_r_mode != FUNC5(reg, LED_CFG_R_LED_MODE)) {
		eeprom = FUNC0(rt2x00dev, EEPROM_FREQ);
		led_ctrl = FUNC4(eeprom, EEPROM_FREQ_LED_MODE);
		if (led_ctrl == 0 || led_ctrl > 0x40) {
			FUNC6(&reg, LED_CFG_G_LED_MODE, led_g_mode);
			FUNC6(&reg, LED_CFG_R_LED_MODE, led_r_mode);
			FUNC3(rt2x00dev, LED_CFG, reg);
		} else {
			FUNC1(rt2x00dev, MCU_BAND_SELECT, 0xff,
					   (led_g_mode << 2) | led_r_mode, 1);
		}
	}
}