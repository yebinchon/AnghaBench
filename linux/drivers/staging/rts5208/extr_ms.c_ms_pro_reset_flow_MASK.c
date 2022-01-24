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
struct ms_info {int switch_8bit_fail; } ;
struct rtsx_chip {scalar_t__ support_ms_8bit; struct ms_info ms_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ms_info*) ; 
 int MS_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  MS_CARD ; 
 int /*<<< orphan*/  MS_CFG ; 
 int /*<<< orphan*/  MS_NO_CARD ; 
 int PUSH_TIME_ODD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int) ; 
 int FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int FUNC7 (struct rtsx_chip*) ; 
 int FUNC8 (struct rtsx_chip*) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct rtsx_chip *chip, int switch_8bit_bus)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;

	for (i = 0; i < 3; i++) {
		retval = FUNC4(chip);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC3(chip, switch_8bit_bus);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC2(chip);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC8(chip);
		if (retval != STATUS_SUCCESS) {
			if (FUNC1(chip, MS_CARD) != STATUS_SUCCESS) {
				FUNC5(chip, MS_NO_CARD);
				return STATUS_FAIL;
			}
			continue;
		} else {
			break;
		}
	}

	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	/* Switch MS-PRO into Parallel mode */
	retval = FUNC9(chip, MS_CFG, 0x18, MS_BUS_WIDTH_4);
	if (retval)
		return retval;

	retval = FUNC9(chip, MS_CFG, PUSH_TIME_ODD,
				     PUSH_TIME_ODD);
	if (retval)
		return retval;

	retval = FUNC6(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	/* If MSPro HG Card, We shall try to switch to 8-bit bus */
	if (FUNC0(ms_card) && chip->support_ms_8bit && switch_8bit_bus) {
		retval = FUNC7(chip);
		if (retval != STATUS_SUCCESS) {
			ms_card->switch_8bit_fail = 1;
			return STATUS_FAIL;
		}
	}

	return STATUS_SUCCESS;
}