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
struct eeprom_priv {int /*<<< orphan*/  bautoload_fail_flag; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {scalar_t__ pwrGroupCnt; } ;

/* Variables and functions */
 struct eeprom_priv* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

__attribute__((used)) static bool FUNC4(struct adapter *adapt)
{
	struct eeprom_priv *eeprom = FUNC0(adapt);

	FUNC3(adapt);

	/* If EEPROM or EFUSE autoload OK, We must config by PHY_REG_PG.txt */
	if (!eeprom->bautoload_fail_flag) {
		adapt->HalData->pwrGroupCnt = 0;
		FUNC1(adapt);
	}
	FUNC2(adapt);
	return true;
}