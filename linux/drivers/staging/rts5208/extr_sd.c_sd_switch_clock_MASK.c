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
struct sd_info {int /*<<< orphan*/  sd_clock; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 scalar_t__ FUNC2 (struct sd_info*) ; 
 int /*<<< orphan*/  SD_CARD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

int FUNC8(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	int re_tuning = 0;

	retval = FUNC6(chip, SD_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC7(chip, sd_card->sd_clock);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (re_tuning) {
		if (FUNC1(sd_card)) {
			if (FUNC2(sd_card))
				retval = FUNC4(chip);
			else
				retval = FUNC5(chip);
		} else {
			if (FUNC0(sd_card))
				retval = FUNC3(chip);
		}

		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}