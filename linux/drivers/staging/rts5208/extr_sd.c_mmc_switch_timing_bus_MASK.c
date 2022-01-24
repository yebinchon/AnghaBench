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
struct sd_info {int sd_addr; int capacity; int /*<<< orphan*/  sd_lock_status; int /*<<< orphan*/  sd_clock; } ;
struct rtsx_chip {int* card_bus_width; size_t* card2lun; struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 scalar_t__ FUNC0 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sd_info*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MMC_4BIT_BUS ; 
 int /*<<< orphan*/  MMC_8BIT_BUS ; 
 int MMC_SWITCH_ERR ; 
 int PINGPONG_BUFFER ; 
 scalar_t__ PPBUF_BASE2 ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 scalar_t__ REG_SD_BLOCK_CNT_H ; 
 scalar_t__ REG_SD_BLOCK_CNT_L ; 
 scalar_t__ REG_SD_BYTE_CNT_H ; 
 scalar_t__ REG_SD_BYTE_CNT_L ; 
 scalar_t__ REG_SD_CFG2 ; 
 scalar_t__ REG_SD_CMD0 ; 
 scalar_t__ REG_SD_CMD1 ; 
 scalar_t__ REG_SD_CMD2 ; 
 scalar_t__ REG_SD_CMD3 ; 
 scalar_t__ REG_SD_CMD4 ; 
 scalar_t__ REG_SD_TRANSFER ; 
 int SD_CALCULATE_CRC7 ; 
 size_t SD_CARD ; 
 int SD_CHECK_CRC16 ; 
 int SD_CHECK_CRC7 ; 
 int /*<<< orphan*/  SD_LOCK_1BIT_MODE ; 
 int SD_NO_WAIT_BUSY_END ; 
 int SD_RSP_LEN_6 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SD_RSP_TYPE_R1b ; 
 int SD_TM_NORMAL_READ ; 
 int SD_TRANSFER_END ; 
 int SD_TRANSFER_ERR ; 
 int SD_TRANSFER_START ; 
 int SEND_EXT_CSD ; 
 int /*<<< orphan*/  SEND_STATUS ; 
 int /*<<< orphan*/  FUNC4 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sd_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sd_info*) ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  SWITCH ; 
 int SWITCH_FAIL ; 
 int SWITCH_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*) ; 
 int* FUNC14 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*) ; 
 int FUNC16 (struct rtsx_chip*,size_t,int) ; 
 int /*<<< orphan*/  FUNC17 (struct rtsx_chip*) ; 
 int FUNC18 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC19 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct rtsx_chip *chip, bool switch_ddr)
{
	struct sd_info *sd_card = &chip->sd_card;
	int retval;
	u8 *ptr, card_type, card_type_mask = 0;

	FUNC3(sd_card);

	FUNC9(FUNC13(chip), "SD/MMC CMD %d\n", SEND_EXT_CSD);

	FUNC15(chip);

	FUNC11(chip, WRITE_REG_CMD, REG_SD_CMD0, 0xFF,
		     0x40 | SEND_EXT_CSD);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_CMD1, 0xFF, 0);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_CMD2, 0xFF, 0);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_CMD3, 0xFF, 0);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_CMD4, 0xFF, 0);

	FUNC11(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_L, 0xFF, 0);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_BYTE_CNT_H, 0xFF, 2);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_L, 0xFF, 1);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_BLOCK_CNT_H, 0xFF, 0);

	FUNC11(chip, WRITE_REG_CMD, REG_SD_CFG2, 0xFF,
		     SD_CALCULATE_CRC7 | SD_CHECK_CRC16 | SD_NO_WAIT_BUSY_END |
		     SD_CHECK_CRC7 | SD_RSP_LEN_6);
	FUNC11(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01,
		     PINGPONG_BUFFER);
	FUNC11(chip, WRITE_REG_CMD, REG_SD_TRANSFER, 0xFF,
		     SD_TM_NORMAL_READ | SD_TRANSFER_START);
	FUNC11(chip, CHECK_REG_CMD, REG_SD_TRANSFER, SD_TRANSFER_END,
		     SD_TRANSFER_END);

	FUNC11(chip, READ_REG_CMD, PPBUF_BASE2 + 196, 0xFF, 0);
	FUNC11(chip, READ_REG_CMD, PPBUF_BASE2 + 212, 0xFF, 0);
	FUNC11(chip, READ_REG_CMD, PPBUF_BASE2 + 213, 0xFF, 0);
	FUNC11(chip, READ_REG_CMD, PPBUF_BASE2 + 214, 0xFF, 0);
	FUNC11(chip, READ_REG_CMD, PPBUF_BASE2 + 215, 0xFF, 0);

	retval = FUNC16(chip, SD_CARD, 1000);
	if (retval < 0) {
		if (retval == -ETIMEDOUT) {
			FUNC12(chip);
			FUNC18(chip, SEND_STATUS, sd_card->sd_addr,
					    SD_RSP_TYPE_R1, NULL, 0);
		}
		return STATUS_FAIL;
	}

	ptr = FUNC14(chip);
	if (ptr[0] & SD_TRANSFER_ERR) {
		FUNC18(chip, SEND_STATUS, sd_card->sd_addr,
				    SD_RSP_TYPE_R1, NULL, 0);
		return STATUS_FAIL;
	}

	if (FUNC0(sd_card)) {
		sd_card->capacity = ((u32)ptr[5] << 24) | ((u32)ptr[4] << 16) |
			((u32)ptr[3] << 8) | ((u32)ptr[2]);
	}

	card_type_mask = 0x03;
	card_type = ptr[1] & card_type_mask;
	if (card_type) {
		u8 rsp[5];

		if (card_type & 0x04) {
			if (switch_ddr)
				FUNC8(sd_card);
			else
				FUNC6(sd_card);
		} else if (card_type & 0x02) {
			FUNC6(sd_card);
		} else {
			FUNC4(sd_card);
		}

		retval = FUNC18(chip, SWITCH, 0x03B90100,
					     SD_RSP_TYPE_R1b, rsp, 5);
		if ((retval != STATUS_SUCCESS) || (rsp[4] & MMC_SWITCH_ERR))
			FUNC3(sd_card);
	}

	FUNC17(chip);
	retval = FUNC19(chip, sd_card->sd_clock);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	/* Test Bus Procedure */
	retval = FUNC10(chip, MMC_8BIT_BUS);
	if (retval == SWITCH_SUCCESS) {
		FUNC7(sd_card);
		chip->card_bus_width[chip->card2lun[SD_CARD]] = 8;
#ifdef SUPPORT_SD_LOCK
		sd_card->sd_lock_status &= ~SD_LOCK_1BIT_MODE;
#endif
	} else if (retval == SWITCH_FAIL) {
		retval = FUNC10(chip, MMC_4BIT_BUS);
		if (retval == SWITCH_SUCCESS) {
			FUNC5(sd_card);
			chip->card_bus_width[chip->card2lun[SD_CARD]] = 4;
#ifdef SUPPORT_SD_LOCK
			sd_card->sd_lock_status &= ~SD_LOCK_1BIT_MODE;
#endif
		} else if (retval == SWITCH_FAIL) {
			FUNC2(sd_card);
			FUNC1(sd_card);
		} else {
			return STATUS_FAIL;
		}
	} else {
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}