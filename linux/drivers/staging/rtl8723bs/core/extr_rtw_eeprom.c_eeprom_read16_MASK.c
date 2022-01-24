#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {int bSurpriseRemoved; int EepromAddressSize; } ;
typedef  TYPE_1__ _adapter ;

/* Variables and functions */
 int EEPROM_READ_OPCODE ; 
 int /*<<< orphan*/  EE_9346CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int _EECS ; 
 int _EEDI ; 
 int _EEDO ; 
 int _EEM0 ; 
 int _EEM1 ; 
 int _EESK ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _func_enter_ ; 
 int /*<<< orphan*/  _func_exit_ ; 
 int /*<<< orphan*/  _module_rtl871x_eeprom_c_ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

u16 FUNC6(_adapter *padapter, u16 reg) /*ReadEEprom*/
{

	u16 x;
	u16 data = 0;

_func_enter_;

	if (padapter->bSurpriseRemoved == true) {
		FUNC0(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
		goto out;
	}
	/* select EEPROM, reset bits, set _EECS*/
	x = FUNC2(padapter, EE_9346CR);

	if (padapter->bSurpriseRemoved == true) {
		FUNC0(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
		goto out;
	}

	x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
	x |= _EEM1 | _EECS;
	FUNC3(padapter, EE_9346CR, (unsigned char)x);

	/* write the read opcode and register number in that order*/
	/* The opcode is 3bits in length, reg is 6 bits long*/
	FUNC5(padapter, EEPROM_READ_OPCODE, 3);
	FUNC5(padapter, reg, padapter->EepromAddressSize);

	/* Now read the data (16 bits) in from the selected EEPROM word*/
	data = FUNC4(padapter);

	FUNC1(padapter);
out:
_func_exit_;
	return data;


}