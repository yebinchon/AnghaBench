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
struct TYPE_2__ {int EEPROMRFGainOffset; int EEPROMRFGainVal; } ;
struct adapter {TYPE_1__ eeprompriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t EEPROM_RF_GAIN_OFFSET ; 
 int /*<<< orphan*/  EEPROM_RF_GAIN_VAL ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC2(
	struct adapter *Adapter, u8 *PROMContent, bool AutoloadFail
)
{
	/*  */
	/*  BB_RF Gain Offset from EEPROM */
	/*  */

	if (!AutoloadFail) {
		Adapter->eeprompriv.EEPROMRFGainOffset = PROMContent[EEPROM_RF_GAIN_OFFSET];
		FUNC0("AutoloadFail =%x,\n", AutoloadFail);
		Adapter->eeprompriv.EEPROMRFGainVal = FUNC1(Adapter, EEPROM_RF_GAIN_VAL);
		FUNC0("Adapter->eeprompriv.EEPROMRFGainVal =%x\n", Adapter->eeprompriv.EEPROMRFGainVal);
	} else {
		Adapter->eeprompriv.EEPROMRFGainOffset = 0;
		Adapter->eeprompriv.EEPROMRFGainVal = 0xFF;
		FUNC0("else AutoloadFail =%x,\n", AutoloadFail);
	}
	FUNC0("EEPRORFGainOffset = 0x%02x\n", Adapter->eeprompriv.EEPROMRFGainOffset);
}