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
typedef  int u32 ;
struct sd_info {int sd_lock_status; int sd_addr; int* raw_csd; int mmc_dont_switch_bus; scalar_t__ capacity; } ;
struct rtsx_chip {int* card_bus_width; size_t* card2lun; size_t card_wp; struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_SEND_CID ; 
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd_info*) ; 
 int /*<<< orphan*/  GO_IDLE_STATE ; 
 int /*<<< orphan*/  REG_SD_BLOCK_CNT_H ; 
 int /*<<< orphan*/  REG_SD_BLOCK_CNT_L ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int /*<<< orphan*/  SD_BUSY ; 
 size_t SD_CARD ; 
 int /*<<< orphan*/  SD_CLK_DIVIDE_0 ; 
 int /*<<< orphan*/  SD_NO_CARD ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R0 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R2 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R3 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R6 ; 
 int /*<<< orphan*/  SD_TO_ERR ; 
 int SD_UNLOCK_POW_ON ; 
 int SD_WRITE_PROTECT ; 
 int /*<<< orphan*/  SEND_OP_COND ; 
 int /*<<< orphan*/  SET_BLOCKLEN ; 
 int /*<<< orphan*/  FUNC3 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sd_info*) ; 
 int /*<<< orphan*/  SET_RELATIVE_ADDR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int SUPPORT_VOLTAGE ; 
 int FUNC5 (struct rtsx_chip*,size_t) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int FUNC7 (struct rtsx_chip*,int) ; 
 int FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int FUNC13 (struct rtsx_chip*) ; 
 int FUNC14 (struct rtsx_chip*) ; 
 int FUNC15 (struct rtsx_chip*) ; 
 int FUNC16 (struct rtsx_chip*,int) ; 
 int FUNC17 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC18 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct rtsx_chip*) ; 
 int FUNC21 (struct rtsx_chip*) ; 
 int FUNC22 (struct rtsx_chip*,int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval, i = 0, j = 0, k = 0;
	bool switch_ddr = true;
	u8 rsp[16];
	u8 spec_ver = 0;
	u32 temp;

#ifdef SUPPORT_SD_LOCK
	if (sd_card->sd_lock_status & SD_UNLOCK_POW_ON)
		goto MMC_UNLOCK_ENTRY;
#endif

switch_fail:
	retval = FUNC14(chip);
	if (retval != STATUS_SUCCESS)
		return retval;

	FUNC3(sd_card);

RTY_MMC_RST:
	retval = FUNC17(chip, GO_IDLE_STATE, 0, SD_RSP_TYPE_R0,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	do {
		if (FUNC5(chip, SD_CARD) != STATUS_SUCCESS) {
			FUNC19(chip, SD_NO_CARD);
			return STATUS_FAIL;
		}

		retval = FUNC17(chip, SEND_OP_COND,
					     (SUPPORT_VOLTAGE | 0x40000000),
					     SD_RSP_TYPE_R3, rsp, 5);
		if (retval != STATUS_SUCCESS) {
			if (FUNC11(chip, SD_BUSY) ||
			    FUNC11(chip, SD_TO_ERR)) {
				k++;
				if (k < 20) {
					FUNC12(chip);
					goto RTY_MMC_RST;
				} else {
					return STATUS_FAIL;
				}
			} else {
				j++;
				if (j < 100) {
					FUNC12(chip);
					goto RTY_MMC_RST;
				} else {
					return STATUS_FAIL;
				}
			}
		}

		FUNC23(20);
		i++;
	} while (!(rsp[1] & 0x80) && (i < 255));

	if (i == 255)
		return STATUS_FAIL;

	if ((rsp[1] & 0x60) == 0x40)
		FUNC4(sd_card);
	else
		FUNC2(sd_card);

	retval = FUNC17(chip, ALL_SEND_CID, 0, SD_RSP_TYPE_R2,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	sd_card->sd_addr = 0x00100000;
	retval = FUNC17(chip, SET_RELATIVE_ADDR, sd_card->sd_addr,
				     SD_RSP_TYPE_R6, rsp, 5);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC10(chip, 1);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	spec_ver = (sd_card->raw_csd[0] & 0x3C) >> 2;

	retval = FUNC16(chip, 1);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC17(chip, SET_BLOCKLEN, 0x200, SD_RSP_TYPE_R1,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

#ifdef SUPPORT_SD_LOCK
MMC_UNLOCK_ENTRY:
	retval = sd_update_lock_status(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;
#endif

	retval = FUNC18(chip, SD_CLK_DIVIDE_0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	chip->card_bus_width[chip->card2lun[SD_CARD]] = 1;

	if (!sd_card->mmc_dont_switch_bus) {
		if (spec_ver == 4) {
			/* MMC 4.x Cards */
			retval = FUNC7(chip, switch_ddr);
			if (retval != STATUS_SUCCESS) {
				retval = FUNC13(chip);
				if (retval != STATUS_SUCCESS)
					return STATUS_FAIL;
				sd_card->mmc_dont_switch_bus = 1;
				goto switch_fail;
			}
		}

		if (FUNC1(sd_card) && (sd_card->capacity == 0))
			return STATUS_FAIL;

		if (switch_ddr && FUNC0(sd_card)) {
			retval = FUNC20(chip);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			retval = FUNC6(chip);
			if (retval != STATUS_SUCCESS) {
				retval = FUNC13(chip);
				if (retval != STATUS_SUCCESS)
					return STATUS_FAIL;

				switch_ddr = false;
				goto switch_fail;
			}

			retval = FUNC22(chip, 0x08, 1, 1000);
			if (retval == STATUS_SUCCESS) {
				retval = FUNC15(chip);
				if (retval != STATUS_SUCCESS) {
					retval = FUNC13(chip);
					if (retval != STATUS_SUCCESS)
						return STATUS_FAIL;

					switch_ddr = false;
					goto switch_fail;
				}
			}
		}
	}

#ifdef SUPPORT_SD_LOCK
	if (sd_card->sd_lock_status & SD_UNLOCK_POW_ON) {
		retval = rtsx_write_register(chip, REG_SD_BLOCK_CNT_H, 0xFF,
					     0x02);
		if (retval)
			return retval;
		retval = rtsx_write_register(chip, REG_SD_BLOCK_CNT_L, 0xFF,
					     0x00);
		if (retval)
			return retval;
	}
#endif

	temp = FUNC8(chip, RTSX_BIPR);
	if (temp & SD_WRITE_PROTECT)
		chip->card_wp |= SD_CARD;

	return STATUS_SUCCESS;
}