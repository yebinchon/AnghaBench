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
struct sd_info {int /*<<< orphan*/  sd_type; scalar_t__ capacity; } ;
struct rtsx_chip {size_t* card2lun; int sd_io; int sd_ctl; scalar_t__* capacity; scalar_t__ asic_code; scalar_t__ ignore_sd; struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FPGA_PULL_CTL ; 
 int FPGA_SD_PULL_CTL_BIT ; 
 int /*<<< orphan*/  REG_SD_BYTE_CNT_H ; 
 int /*<<< orphan*/  REG_SD_BYTE_CNT_L ; 
 int RESET_MMC_FIRST ; 
 size_t SD_CARD ; 
 int /*<<< orphan*/  SD_CLK_DIVIDE_0 ; 
 int /*<<< orphan*/  SD_NO_CARD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC2 (struct rtsx_chip*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sd_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int FUNC7 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int FUNC13 (struct rtsx_chip*) ; 
 int FUNC14 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct rtsx_chip*) ; 

int FUNC16(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;

	FUNC12(chip);

	FUNC5(sd_card, 0, sizeof(struct sd_info));
	chip->capacity[chip->card2lun[SD_CARD]] = 0;

	retval = FUNC4(chip, SD_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (chip->ignore_sd && FUNC0(chip) &&
	    !FUNC1(chip)) {
		if (chip->asic_code) {
			retval = FUNC13(chip);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;
		} else {
			retval = FUNC9(chip, FPGA_PULL_CTL,
						     FPGA_SD_PULL_CTL_BIT |
						     0x20, 0);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;
		}
		retval = FUNC2(chip, SD_CARD);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		chip->sd_io = 1;
		return STATUS_FAIL;
	}

	retval = FUNC11(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (chip->sd_ctl & RESET_MMC_FIRST) {
		retval = FUNC6(chip);
		if (retval != STATUS_SUCCESS) {
			if (FUNC10(chip, SD_NO_CARD))
				return STATUS_FAIL;

			retval = FUNC7(chip);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;
		}
	} else {
		retval = FUNC7(chip);
		if (retval != STATUS_SUCCESS) {
			if (FUNC10(chip, SD_NO_CARD))
				return STATUS_FAIL;

			if (chip->sd_io)
				return STATUS_FAIL;
			retval = FUNC6(chip);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;
		}
	}

	retval = FUNC14(chip, SD_CLK_DIVIDE_0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC9(chip, REG_SD_BYTE_CNT_L, 0xFF, 0);
	if (retval)
		return retval;
	retval = FUNC9(chip, REG_SD_BYTE_CNT_H, 0xFF, 2);
	if (retval)
		return retval;

	chip->capacity[chip->card2lun[SD_CARD]] = sd_card->capacity;

	retval = FUNC15(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC3(FUNC8(chip), "sd_card->sd_type = 0x%x\n", sd_card->sd_type);

	return STATUS_SUCCESS;
}