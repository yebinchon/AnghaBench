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
typedef  int u16 ;
struct rtsx_chip {scalar_t__ ic_version; scalar_t__ driver_first_load; scalar_t__ phy_debug_mode; int /*<<< orphan*/  asic_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDRESUMECTL ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int) ; 
 scalar_t__ IC_VER_C ; 
 scalar_t__ IC_VER_D ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int,int*) ; 
 int FUNC5 (struct rtsx_chip*,int,int) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rtsx_chip *chip)
{
	int ret;

	if (!chip->asic_code || !FUNC0(chip, 0x5208)) {
		FUNC3(chip);
		return STATUS_SUCCESS;
	}

	if (chip->phy_debug_mode) {
		ret = FUNC6(chip, CDRESUMECTL, 0x77, 0);
		if (ret)
			return ret;
		FUNC2(chip);
	} else {
		FUNC3(chip);
	}

	if (chip->ic_version >= IC_VER_D) {
		u16 reg;

		ret = FUNC4(chip, 0x00, &reg);
		if (ret != STATUS_SUCCESS)
			return STATUS_FAIL;

		reg &= 0xFE7F;
		reg |= 0x80;
		ret = FUNC5(chip, 0x00, reg);
		if (ret != STATUS_SUCCESS)
			return STATUS_FAIL;

		ret = FUNC4(chip, 0x1C, &reg);
		if (ret != STATUS_SUCCESS)
			return STATUS_FAIL;

		reg &= 0xFFF7;
		ret = FUNC5(chip, 0x1C, reg);
		if (ret != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	if (chip->driver_first_load && (chip->ic_version < IC_VER_C))
		FUNC1(chip);

	return STATUS_SUCCESS;
}