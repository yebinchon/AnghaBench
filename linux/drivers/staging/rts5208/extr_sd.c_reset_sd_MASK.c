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
struct sd_info {int sd_lock_status; int sd_addr; int* raw_csd; int sd_switch_fail; } ;
struct rtsx_chip {int sdio_retry_cnt; int sd_io; int sd30_drive_sel_1v8; int* card_bus_width; size_t* card2lun; struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_SEND_CID ; 
 int /*<<< orphan*/  APP_CMD ; 
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 scalar_t__ FUNC3 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sd_info*) ; 
 int DDR50_SUPPORT_MASK ; 
 int /*<<< orphan*/  GO_IDLE_STATE ; 
 int /*<<< orphan*/  IO_SEND_OP_COND ; 
 int /*<<< orphan*/  REG_SD_BLOCK_CNT_H ; 
 int /*<<< orphan*/  REG_SD_BLOCK_CNT_L ; 
 int /*<<< orphan*/  SD30_DRIVE_SEL ; 
 int SDR104_SUPPORT_MASK ; 
 int SDR50_SUPPORT_MASK ; 
 int /*<<< orphan*/  SD_APP_OP_COND ; 
 int SD_BUS_WIDTH_1 ; 
 int SD_BUS_WIDTH_4 ; 
 size_t SD_CARD ; 
 int /*<<< orphan*/  SD_CLK_DIVIDE_0 ; 
 int SD_LOCKED ; 
 int SD_LOCK_1BIT_MODE ; 
 int /*<<< orphan*/  SD_NO_CARD ; 
 int SD_PWD_EXIST ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R0 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R2 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R3 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R4 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R6 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R7 ; 
 int SD_UNLOCK_POW_ON ; 
 int /*<<< orphan*/  SEND_IF_COND ; 
 int /*<<< orphan*/  SEND_RELATIVE_ADDR ; 
 int /*<<< orphan*/  SEND_STATUS ; 
 int /*<<< orphan*/  SET_BLOCKLEN ; 
 int /*<<< orphan*/  SET_BUS_WIDTH ; 
 int /*<<< orphan*/  SET_CLR_CARD_DETECT ; 
 int /*<<< orphan*/  FUNC5 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sd_info*) ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int SUPPORT_VOLTAGE ; 
 int FUNC7 (struct rtsx_chip*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (struct rtsx_chip*,int) ; 
 int FUNC12 (struct rtsx_chip*,int) ; 
 int FUNC13 (struct rtsx_chip*) ; 
 int FUNC14 (struct rtsx_chip*) ; 
 int FUNC15 (struct rtsx_chip*) ; 
 int FUNC16 (struct rtsx_chip*) ; 
 int FUNC17 (struct rtsx_chip*) ; 
 int FUNC18 (struct rtsx_chip*) ; 
 int FUNC19 (struct rtsx_chip*) ; 
 int FUNC20 (struct rtsx_chip*,int) ; 
 int FUNC21 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC22 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct rtsx_chip*) ; 
 int FUNC25 (struct rtsx_chip*,int) ; 
 int FUNC26 (struct rtsx_chip*) ; 
 int FUNC27 (struct rtsx_chip*) ; 
 int FUNC28 (struct rtsx_chip*,int,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 

__attribute__((used)) static int FUNC30(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	bool hi_cap_flow = false;
	int retval, i = 0, j = 0, k = 0;
	bool sd_dont_switch = false;
	bool support_1v8 = false;
	bool try_sdio = true;
	u8 rsp[16];
	u8 switch_bus_width;
	u32 voltage = 0;
	bool sd20_mode = false;

	FUNC5(sd_card);

switch_fail:

	i = 0;
	j = 0;
	k = 0;
	hi_cap_flow = false;

#ifdef SUPPORT_SD_LOCK
	if (sd_card->sd_lock_status & SD_UNLOCK_POW_ON)
		goto SD_UNLOCK_ENTRY;
#endif

	retval = FUNC17(chip);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	retval = FUNC15(chip);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	if (FUNC1(chip) && !FUNC2(chip) && try_sdio) {
		int rty_cnt = 0;

		for (; rty_cnt < chip->sdio_retry_cnt; rty_cnt++) {
			if (FUNC7(chip, SD_CARD) != STATUS_SUCCESS) {
				FUNC23(chip, SD_NO_CARD);
				goto status_fail;
			}

			retval = FUNC21(chip, IO_SEND_OP_COND, 0,
						     SD_RSP_TYPE_R4, rsp, 5);
			if (retval == STATUS_SUCCESS) {
				int func_num = (rsp[1] >> 4) & 0x07;

				if (func_num) {
					FUNC8(FUNC9(chip), "SD_IO card (Function number: %d)!\n",
						func_num);
					chip->sd_io = 1;
					goto status_fail;
				}

				break;
			}

			FUNC16(chip);

			FUNC15(chip);
		}

		FUNC8(FUNC9(chip), "Normal card!\n");
	}

	/* Start Initialization Process of SD Card */
RTY_SD_RST:
	retval = FUNC21(chip, GO_IDLE_STATE, 0, SD_RSP_TYPE_R0,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	FUNC29(20);

	retval = FUNC21(chip, SEND_IF_COND, 0x000001AA,
				     SD_RSP_TYPE_R7, rsp, 5);
	if (retval == STATUS_SUCCESS) {
		if ((rsp[4] == 0xAA) && ((rsp[3] & 0x0f) == 0x01)) {
			hi_cap_flow = true;
			voltage = SUPPORT_VOLTAGE | 0x40000000;
		}
	}

	if (!hi_cap_flow) {
		voltage = SUPPORT_VOLTAGE;

		retval = FUNC21(chip, GO_IDLE_STATE, 0,
					     SD_RSP_TYPE_R0, NULL, 0);
		if (retval != STATUS_SUCCESS)
			goto status_fail;

		FUNC29(20);
	}

	do {
		retval = FUNC21(chip, APP_CMD, 0, SD_RSP_TYPE_R1,
					     NULL, 0);
		if (retval != STATUS_SUCCESS) {
			if (FUNC7(chip, SD_CARD) != STATUS_SUCCESS) {
				FUNC23(chip, SD_NO_CARD);
				goto status_fail;
			}

			j++;
			if (j < 3)
				goto RTY_SD_RST;
			else
				goto status_fail;
		}

		retval = FUNC21(chip, SD_APP_OP_COND, voltage,
					     SD_RSP_TYPE_R3, rsp, 5);
		if (retval != STATUS_SUCCESS) {
			k++;
			if (k < 3)
				goto RTY_SD_RST;
			else
				goto status_fail;
		}

		i++;
		FUNC29(20);
	} while (!(rsp[1] & 0x80) && (i < 255));

	if (i == 255)
		goto status_fail;

	if (hi_cap_flow) {
		if (rsp[1] & 0x40)
			FUNC6(sd_card);
		else
			FUNC4(sd_card);

		support_1v8 = false;
	} else {
		FUNC4(sd_card);
		support_1v8 = false;
	}
	FUNC8(FUNC9(chip), "support_1v8 = %d\n", support_1v8);

	if (support_1v8) {
		retval = FUNC27(chip);
		if (retval != STATUS_SUCCESS)
			goto status_fail;
	}

	retval = FUNC21(chip, ALL_SEND_CID, 0, SD_RSP_TYPE_R2,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	for (i = 0; i < 3; i++) {
		retval = FUNC21(chip, SEND_RELATIVE_ADDR, 0,
					     SD_RSP_TYPE_R6, rsp, 5);
		if (retval != STATUS_SUCCESS)
			goto status_fail;

		sd_card->sd_addr = (u32)rsp[1] << 24;
		sd_card->sd_addr += (u32)rsp[2] << 16;

		if (sd_card->sd_addr)
			break;
	}

	retval = FUNC11(chip, 1);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	retval = FUNC20(chip, 1);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

#ifdef SUPPORT_SD_LOCK
SD_UNLOCK_ENTRY:
	retval = sd_update_lock_status(chip);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	if (sd_card->sd_lock_status & SD_LOCKED) {
		sd_card->sd_lock_status |= (SD_LOCK_1BIT_MODE | SD_PWD_EXIST);
		return STATUS_SUCCESS;
	} else if (!(sd_card->sd_lock_status & SD_UNLOCK_POW_ON)) {
		sd_card->sd_lock_status &= ~SD_PWD_EXIST;
	}
#endif

	retval = FUNC21(chip, APP_CMD, sd_card->sd_addr,
				     SD_RSP_TYPE_R1, NULL, 0);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	retval = FUNC21(chip, SET_CLR_CARD_DETECT, 0,
				     SD_RSP_TYPE_R1, NULL, 0);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	if (support_1v8) {
		retval = FUNC21(chip, APP_CMD, sd_card->sd_addr,
					     SD_RSP_TYPE_R1, NULL, 0);
		if (retval != STATUS_SUCCESS)
			goto status_fail;

		retval = FUNC21(chip, SET_BUS_WIDTH, 2,
					     SD_RSP_TYPE_R1, NULL, 0);
		if (retval != STATUS_SUCCESS)
			goto status_fail;

		switch_bus_width = SD_BUS_WIDTH_4;
	} else {
		switch_bus_width = SD_BUS_WIDTH_1;
	}

	retval = FUNC21(chip, SET_BLOCKLEN, 0x200, SD_RSP_TYPE_R1,
				     NULL, 0);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	retval = FUNC22(chip, SD_CLK_DIVIDE_0);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	if (!(sd_card->raw_csd[4] & 0x40))
		sd_dont_switch = true;

	if (!sd_dont_switch) {
		if (sd20_mode) {
			/* Set sd_switch_fail here, because we needn't
			 * switch to UHS mode
			 */
			sd_card->sd_switch_fail = SDR104_SUPPORT_MASK |
				DDR50_SUPPORT_MASK | SDR50_SUPPORT_MASK;
		}

		/* Check the card whether follow SD1.1 spec or higher */
		retval = FUNC12(chip, switch_bus_width);
		if (retval == STATUS_SUCCESS) {
			retval = FUNC25(chip, switch_bus_width);
			if (retval != STATUS_SUCCESS) {
				FUNC16(chip);
				sd_dont_switch = true;
				try_sdio = false;

				goto switch_fail;
			}
		} else {
			if (support_1v8) {
				FUNC16(chip);
				sd_dont_switch = true;
				try_sdio = false;

				goto switch_fail;
			}
		}
	}

	if (!support_1v8) {
		retval = FUNC21(chip, APP_CMD, sd_card->sd_addr,
					     SD_RSP_TYPE_R1, NULL, 0);
		if (retval != STATUS_SUCCESS)
			goto status_fail;

		retval = FUNC21(chip, SET_BUS_WIDTH, 2,
					     SD_RSP_TYPE_R1, NULL, 0);
		if (retval != STATUS_SUCCESS)
			goto status_fail;
	}

#ifdef SUPPORT_SD_LOCK
	sd_card->sd_lock_status &= ~SD_LOCK_1BIT_MODE;
#endif

	if (!sd20_mode && FUNC0(sd_card)) {
		int read_lba0 = 1;

		retval = FUNC10(chip, SD30_DRIVE_SEL, 0x07,
					     chip->sd30_drive_sel_1v8);
		if (retval)
			return retval;

		retval = FUNC24(chip);
		if (retval != STATUS_SUCCESS)
			goto status_fail;

		if (FUNC3(sd_card))
			retval = FUNC14(chip);
		else
			retval = FUNC19(chip);

		if (retval != STATUS_SUCCESS) {
			retval = FUNC16(chip);
			if (retval != STATUS_SUCCESS)
				goto status_fail;

			try_sdio = false;
			sd20_mode = true;
			goto switch_fail;
		}

		FUNC21(chip, SEND_STATUS, sd_card->sd_addr,
				    SD_RSP_TYPE_R1, NULL, 0);

		if (FUNC3(sd_card)) {
			retval = FUNC28(chip, 0x08, 1, 1000);
			if (retval != STATUS_SUCCESS)
				read_lba0 = 0;
		}

		if (read_lba0) {
			retval = FUNC18(chip);
			if (retval != STATUS_SUCCESS) {
				retval = FUNC16(chip);
				if (retval != STATUS_SUCCESS)
					goto status_fail;

				try_sdio = false;
				sd20_mode = true;
				goto switch_fail;
			}
		}
	}

	retval = FUNC13(chip);
	if (retval != STATUS_SUCCESS)
		goto status_fail;

	chip->card_bus_width[chip->card2lun[SD_CARD]] = 4;

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

	return STATUS_SUCCESS;

status_fail:
	return STATUS_FAIL;
}