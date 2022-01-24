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
struct hal_com_data {int EEPROMVersion; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 size_t EEPROM_VERSION_8723B ; 
 struct hal_com_data* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_hci_hal_init_c_ ; 

void FUNC2(
	struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
	struct hal_com_data	*pHalData = FUNC0(padapter);

/* 	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("%s(): AutoLoadFail = %d\n", __func__, AutoLoadFail)); */
	if (!AutoLoadFail)
		pHalData->EEPROMVersion = hwinfo[EEPROM_VERSION_8723B];
	else
		pHalData->EEPROMVersion = 1;
	FUNC1(_module_hci_hal_init_c_, _drv_notice_, ("Hal_EfuseParseEEPROMVer(), EEVer = %d\n",
		pHalData->EEPROMVersion));
}