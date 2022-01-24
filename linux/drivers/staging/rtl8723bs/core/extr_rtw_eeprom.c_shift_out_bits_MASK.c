#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_7__ {int bSurpriseRemoved; } ;
typedef  TYPE_1__ _adapter ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_RATE ; 
 int /*<<< orphan*/  EE_9346CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int _EEDI ; 
 int _EEDO ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _func_enter_ ; 
 int /*<<< orphan*/  _func_exit_ ; 
 int /*<<< orphan*/  _module_rtl871x_eeprom_c_ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 

void FUNC6(_adapter *padapter, u16 data, u16 count)
{
	u16 x, mask;
_func_enter_;

	if (padapter->bSurpriseRemoved == true) {
		FUNC0(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
		goto out;
	}
	mask = 0x01 << (count - 1);
	x = FUNC2(padapter, EE_9346CR);

	x &= ~(_EEDO | _EEDI);

	do {
		x &= ~_EEDI;
		if (data & mask)
			x |= _EEDI;
		if (padapter->bSurpriseRemoved == true) {
		FUNC0(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
		goto out;
		}
		FUNC3(padapter, EE_9346CR, (u8)x);
		FUNC4(CLOCK_RATE);
		FUNC5(padapter, &x);
		FUNC1(padapter, &x);
		mask = mask >> 1;
	} while (mask);
	if (padapter->bSurpriseRemoved == true) {
		FUNC0(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
		goto out;
	}
	x &= ~_EEDI;
	FUNC3(padapter, EE_9346CR, (u8)x);
out:
_func_exit_;
}