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
struct eeprom_priv {int EepromOrEfuse; int bautoload_fail_flag; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int BOOT_FROM_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int EEPROM_EN ; 
 struct eeprom_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  REG_9346CR ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct adapter *Adapter)
{
	struct eeprom_priv *eeprom = FUNC1(Adapter);
	u8 eeValue;

	/* check system boot selection */
	eeValue = FUNC4(Adapter, REG_9346CR);
	eeprom->EepromOrEfuse		= (eeValue & BOOT_FROM_EEPROM) ? true : false;
	eeprom->bautoload_fail_flag	= (eeValue & EEPROM_EN) ? false : true;

	FUNC0("Boot from %s, Autoload %s !\n", (eeprom->EepromOrEfuse ? "EEPROM" : "EFUSE"),
		(eeprom->bautoload_fail_flag ? "Fail" : "OK"));

	FUNC2(Adapter);
	FUNC3(Adapter);
}