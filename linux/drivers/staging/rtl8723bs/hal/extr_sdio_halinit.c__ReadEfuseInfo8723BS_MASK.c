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
struct eeprom_priv {int /*<<< orphan*/  bautoload_fail_flag; int /*<<< orphan*/ * efuse_eeprom_data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct eeprom_priv* FUNC1 (struct adapter*) ; 
 int HWSET_MAX_SIZE_8723B ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_hci_hal_init_c_ ; 

__attribute__((used)) static void FUNC19(struct adapter *padapter)
{
	struct eeprom_priv *pEEPROM = FUNC1(padapter);
	u8 *hwinfo = NULL;

	FUNC18(_module_hci_hal_init_c_, _drv_info_, ("====>_ReadEfuseInfo8723BS()\n"));

	/*  */
	/*  This part read and parse the eeprom/efuse content */
	/*  */

	if (sizeof(pEEPROM->efuse_eeprom_data) < HWSET_MAX_SIZE_8723B)
		FUNC0("[WARNING] size of efuse_eeprom_data is less than HWSET_MAX_SIZE_8723B!\n");

	hwinfo = pEEPROM->efuse_eeprom_data;

	FUNC16(padapter, hwinfo);

	FUNC9(padapter, hwinfo);
	FUNC8(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

	FUNC10(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

	FUNC13(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC5(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

	/*  */
	/*  Read Bluetooth co-exist and initialize */
	/*  */
	FUNC11(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC4(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC6(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC15(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC12(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC3(padapter, hwinfo, pEEPROM->bautoload_fail_flag);
	FUNC7(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

	FUNC14(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

#ifdef CONFIG_WOWLAN
	Hal_DetectWoWMode(padapter);
#endif

	FUNC17(padapter, hwinfo, pEEPROM->bautoload_fail_flag);

	FUNC18(_module_hci_hal_init_c_, _drv_info_, ("<==== _ReadEfuseInfo8723BS()\n"));
}