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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct eeprom_priv {int bautoload_fail_flag; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 struct eeprom_priv* FUNC1 (struct adapter*) ; 
 scalar_t__ RTL_EEPROM_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_hal_init_c_ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct adapter *padapter, u8 *hwinfo)
{
	struct eeprom_priv *pEEPROM = FUNC1(padapter);
/* 	struct hal_com_data	*pHalData = GET_HAL_DATA(padapter); */
	u16 EEPROMId;


	/*  Checl 0x8129 again for making sure autoload status!! */
	EEPROMId = FUNC3(*((__le16 *)hwinfo));
	if (EEPROMId != RTL_EEPROM_ID) {
		FUNC0("EEPROM ID(%#x) is invalid!!\n", EEPROMId);
		pEEPROM->bautoload_fail_flag = true;
	} else
		pEEPROM->bautoload_fail_flag = false;

	FUNC2(_module_hal_init_c_, _drv_notice_, ("EEPROM ID = 0x%04x\n", EEPROMId));
}