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
struct hal_com_data {int CrystalCap; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 void* EEPROM_Default_CrystalCap_8723B ; 
 size_t EEPROM_XTAL_8723B ; 
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
	if (!AutoLoadFail) {
		pHalData->CrystalCap = hwinfo[EEPROM_XTAL_8723B];
		if (pHalData->CrystalCap == 0xFF)
			pHalData->CrystalCap = EEPROM_Default_CrystalCap_8723B;	   /* what value should 8812 set? */
	} else
		pHalData->CrystalCap = EEPROM_Default_CrystalCap_8723B;

	FUNC1(_module_hci_hal_init_c_, _drv_notice_, ("EEPROM CrystalCap: 0x%2x\n", pHalData->CrystalCap));
}