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
struct eeprom_priv {int /*<<< orphan*/  bautoload_fail_flag; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFUSE_WIFI ; 
 struct eeprom_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_notice_ ; 
 int /*<<< orphan*/  _module_hci_hal_init_c_ ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

void FUNC4(struct adapter *padapter)
{
	struct eeprom_priv *pEEPROM = FUNC1(padapter);

	if (!pEEPROM->bautoload_fail_flag) { /*  autoload OK. */
		if (!FUNC3(padapter)) {
			/*  Read EFUSE real map to shadow. */
			FUNC0(padapter, EFUSE_WIFI);
		}
	} else {/* autoload fail */
		FUNC2(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));
		/* update to default value 0xFF */
		if (!FUNC3(padapter))
			FUNC0(padapter, EFUSE_WIFI);
	}
}