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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int channel; } ;
struct rt2x00lib_conf {TYPE_1__ rf; } ;
struct rt2x00_dev {short lna_gain; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_EXT_LNA2 ; 
 int /*<<< orphan*/  EEPROM_EXT_LNA2_A1 ; 
 int /*<<< orphan*/  EEPROM_EXT_LNA2_A2 ; 
 int /*<<< orphan*/  EEPROM_LNA ; 
 int /*<<< orphan*/  EEPROM_LNA_A0 ; 
 int /*<<< orphan*/  EEPROM_LNA_BG ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_A2_LNA_A2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2 ; 
 int /*<<< orphan*/  EEPROM_RSSI_BG2_LNA_A1 ; 
 int /*<<< orphan*/  RT3593 ; 
 int /*<<< orphan*/  RT3883 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 short FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev,
				   struct rt2x00lib_conf *libconf)
{
	u16 eeprom;
	short lna_gain;

	if (libconf->rf.channel <= 14) {
		eeprom = FUNC0(rt2x00dev, EEPROM_LNA);
		lna_gain = FUNC1(eeprom, EEPROM_LNA_BG);
	} else if (libconf->rf.channel <= 64) {
		eeprom = FUNC0(rt2x00dev, EEPROM_LNA);
		lna_gain = FUNC1(eeprom, EEPROM_LNA_A0);
	} else if (libconf->rf.channel <= 128) {
		if (FUNC2(rt2x00dev, RT3593) ||
		    FUNC2(rt2x00dev, RT3883)) {
			eeprom = FUNC0(rt2x00dev, EEPROM_EXT_LNA2);
			lna_gain = FUNC1(eeprom,
						      EEPROM_EXT_LNA2_A1);
		} else {
			eeprom = FUNC0(rt2x00dev, EEPROM_RSSI_BG2);
			lna_gain = FUNC1(eeprom,
						      EEPROM_RSSI_BG2_LNA_A1);
		}
	} else {
		if (FUNC2(rt2x00dev, RT3593) ||
		    FUNC2(rt2x00dev, RT3883)) {
			eeprom = FUNC0(rt2x00dev, EEPROM_EXT_LNA2);
			lna_gain = FUNC1(eeprom,
						      EEPROM_EXT_LNA2_A2);
		} else {
			eeprom = FUNC0(rt2x00dev, EEPROM_RSSI_A2);
			lna_gain = FUNC1(eeprom,
						      EEPROM_RSSI_A2_LNA_A2);
		}
	}

	rt2x00dev->lna_gain = lna_gain;
}