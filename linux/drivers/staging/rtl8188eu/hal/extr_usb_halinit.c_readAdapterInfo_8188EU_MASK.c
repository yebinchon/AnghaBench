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
struct eeprom_priv {int /*<<< orphan*/  bautoload_fail_flag; int /*<<< orphan*/  efuse_eeprom_data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct eeprom_priv* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct adapter *adapt)
{
	struct eeprom_priv *eeprom = FUNC0(adapt);

	/* parse the eeprom/efuse content */
	FUNC4(adapt, eeprom->efuse_eeprom_data);
	FUNC6(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC5(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);

	FUNC9(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC11(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC3(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC12(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC7(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC2(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC8(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC1(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
	FUNC10(adapt, eeprom->efuse_eeprom_data, eeprom->bautoload_fail_flag);
}