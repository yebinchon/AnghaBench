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
struct rtsx_chip {int /*<<< orphan*/  ft2_fast_mode; scalar_t__ asic_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OE ; 
 int FPGA_MS_PULL_CTL_BIT ; 
 int /*<<< orphan*/  FPGA_PULL_CTL ; 
 int /*<<< orphan*/  MS_CARD ; 
 int MS_OUTPUT_EN ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct rtsx_chip *chip)
{
	int retval;

	retval = FUNC1(chip, MS_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (chip->asic_code) {
		retval = FUNC2(chip);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	} else {
		retval = FUNC3(chip, FPGA_PULL_CTL,
					     FPGA_MS_PULL_CTL_BIT | 0x20,
					     FPGA_MS_PULL_CTL_BIT);
		if (retval)
			return retval;
	}
	retval = FUNC3(chip, CARD_OE, MS_OUTPUT_EN, 0);
	if (retval)
		return retval;

	if (!chip->ft2_fast_mode) {
		retval = FUNC0(chip, MS_CARD);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}