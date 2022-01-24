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
struct eeprom_priv {scalar_t__ efuse_eeprom_data; int /*<<< orphan*/  EepromOrEfuse; int /*<<< orphan*/  bautoload_fail_flag; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EFUSE_WIFI ; 
 struct eeprom_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  HWSET_MAX_SIZE_8723B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_hci_hal_init_c_ ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 

void FUNC4(struct adapter *padapter, u8 *PROMContent)
{
	struct eeprom_priv *pEEPROM = FUNC1(padapter);

	if (!pEEPROM->bautoload_fail_flag) { /*  autoload OK. */
		if (!pEEPROM->EepromOrEfuse) {
			/*  Read EFUSE real map to shadow. */
			FUNC0(padapter, EFUSE_WIFI, false);
			FUNC3((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
		}
	} else {/* autoload fail */
		FUNC2(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));
		if (!pEEPROM->EepromOrEfuse)
			FUNC0(padapter, EFUSE_WIFI, false);
		FUNC3((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
	}
}