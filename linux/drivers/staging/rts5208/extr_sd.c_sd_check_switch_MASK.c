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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_CARD ; 
 int /*<<< orphan*/  SD_CHECK_MODE ; 
 int SD_CRC16_ERR ; 
 int /*<<< orphan*/  SD_NO_CARD ; 
 int /*<<< orphan*/  SD_STAT1 ; 
 int /*<<< orphan*/  SD_SWITCH_MODE ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct rtsx_chip *chip,
			   u8 func_group, u8 func_to_switch, u8 bus_width)
{
	int retval;
	int i;
	bool switch_good = false;

	for (i = 0; i < 3; i++) {
		if (FUNC0(chip, SD_CARD) != STATUS_SUCCESS) {
			FUNC6(chip, SD_NO_CARD);
			return STATUS_FAIL;
		}

		retval = FUNC5(chip, SD_CHECK_MODE, func_group,
					      func_to_switch, bus_width);
		if (retval == STATUS_SUCCESS) {
			u8 stat;

			retval = FUNC5(chip, SD_SWITCH_MODE,
						      func_group,
						      func_to_switch,
						      bus_width);
			if (retval == STATUS_SUCCESS) {
				switch_good = true;
				break;
			}

			retval = FUNC4(chip, SD_STAT1, &stat);
			if (retval)
				return retval;
			if (stat & SD_CRC16_ERR) {
				FUNC1(FUNC3(chip), "SD CRC16 error when switching mode\n");
				return STATUS_FAIL;
			}
		}

		func_to_switch = FUNC2(func_group,
						       func_to_switch);

		FUNC7(20);
	}

	if (!switch_good)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}