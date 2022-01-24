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
typedef  int u16 ;
struct ms_info {int page_off; } ;
struct rtsx_chip {int /*<<< orphan*/  srb; int /*<<< orphan*/  ms_timeout; struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_END ; 
 int /*<<< orphan*/  BLOCK_WRITE ; 
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 scalar_t__ FUNC0 (struct ms_info*) ; 
 int /*<<< orphan*/  DMA_512 ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GET_INT ; 
 int INT_REG_BREQ ; 
 int INT_REG_CED ; 
 int INT_REG_CMDNK ; 
 int INT_REG_ERR ; 
 int /*<<< orphan*/  MS_BREQ_ERROR ; 
 int /*<<< orphan*/  MS_CARD ; 
 int /*<<< orphan*/  MS_CMD_NK ; 
 int MS_EXTRA_SIZE ; 
 int /*<<< orphan*/  MS_FLASH_WRITE_ERROR ; 
 int MS_MAX_RETRY_COUNT ; 
 int /*<<< orphan*/  MS_NO_CARD ; 
 int /*<<< orphan*/  MS_NO_ERROR ; 
 int MS_TM_NORMAL_WRITE ; 
 int /*<<< orphan*/  MS_TM_READ_BYTES ; 
 int /*<<< orphan*/  MS_TO_ERROR ; 
 int /*<<< orphan*/  MS_TPC ; 
 int /*<<< orphan*/  MS_TRANSFER ; 
 int MS_TRANSFER_END ; 
 int MS_TRANSFER_START ; 
 int /*<<< orphan*/  MS_TRANS_CFG ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int /*<<< orphan*/  OverwriteFlag ; 
 int RING_BUFFER ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int STATUS_TIMEDOUT ; 
 int /*<<< orphan*/  SystemParm ; 
 int WAIT_INT ; 
 int WRITE_PAGE_DATA ; 
 int /*<<< orphan*/  WRITE_REG ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 int FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,scalar_t__,unsigned int*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct rtsx_chip *chip, u16 old_blk,
				   u16 new_blk, u16 log_blk, u8 start_page,
				u8 end_page, u8 *buf, unsigned int *index,
				unsigned int *offset)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;
	u8 page_addr, val, data[16];
	u8 *ptr;

	if (!start_page) {
		retval = FUNC5(chip, OverwriteFlag, MS_EXTRA_SIZE,
					    SystemParm, 7);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		if (FUNC0(ms_card))
			data[0] = 0x88;
		else
			data[0] = 0x80;

		data[1] = 0;
		data[2] = (u8)(old_blk >> 8);
		data[3] = (u8)old_blk;
		data[4] = 0x80;
		data[5] = 0;
		data[6] = 0xEF;
		data[7] = 0xFF;

		retval = FUNC7(chip, WRITE_REG, 7, NO_WAIT_INT,
					data, 8);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC3(chip, BLOCK_WRITE, WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		FUNC4(chip, MS_NO_ERROR);
		retval = FUNC6(chip, MS_TM_READ_BYTES, GET_INT, 1,
					 NO_WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	retval = FUNC5(chip, OverwriteFlag, MS_EXTRA_SIZE,
				    SystemParm, (6 + MS_EXTRA_SIZE));
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC4(chip, MS_NO_ERROR);

	if (FUNC0(ms_card))
		data[0] = 0x88;
	else
		data[0] = 0x80;

	data[1] = 0;
	data[2] = (u8)(new_blk >> 8);
	data[3] = (u8)new_blk;
	if ((end_page - start_page) == 1)
		data[4] = 0x20;
	else
		data[4] = 0;

	data[5] = start_page;
	data[6] = 0xF8;
	data[7] = 0xFF;
	data[8] = (u8)(log_blk >> 8);
	data[9] = (u8)log_blk;

	for (i = 0x0A; i < 0x10; i++)
		data[i] = 0xFF;

	for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
		retval = FUNC7(chip, WRITE_REG, 6 + MS_EXTRA_SIZE,
					NO_WAIT_INT, data, 16);
		if (retval == STATUS_SUCCESS)
			break;
	}
	if (i == MS_MAX_RETRY_COUNT)
		return STATUS_FAIL;

	for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
		retval = FUNC3(chip, BLOCK_WRITE, WAIT_INT);
		if (retval == STATUS_SUCCESS)
			break;
	}
	if (i == MS_MAX_RETRY_COUNT)
		return STATUS_FAIL;

	retval = FUNC2(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	ptr = buf;
	for (page_addr = start_page; page_addr < end_page; page_addr++) {
		FUNC4(chip, MS_NO_ERROR);

		if (FUNC1(chip, MS_CARD) != STATUS_SUCCESS) {
			FUNC4(chip, MS_NO_CARD);
			return STATUS_FAIL;
		}

		if (val & INT_REG_CMDNK) {
			FUNC4(chip, MS_CMD_NK);
			return STATUS_FAIL;
		}
		if (val & INT_REG_ERR) {
			FUNC4(chip, MS_FLASH_WRITE_ERROR);
			return STATUS_FAIL;
		}
		if (!(val & INT_REG_BREQ)) {
			FUNC4(chip, MS_BREQ_ERROR);
			return STATUS_FAIL;
		}

		FUNC15(30);

		FUNC10(chip);

		FUNC8(chip, WRITE_REG_CMD, MS_TPC,
			     0xFF, WRITE_PAGE_DATA);
		FUNC8(chip, WRITE_REG_CMD, MS_TRANS_CFG,
			     0xFF, WAIT_INT);
		FUNC8(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
			     0x01, RING_BUFFER);

		FUNC14(DMA_TO_DEVICE, chip, 512, DMA_512);

		FUNC8(chip, WRITE_REG_CMD, MS_TRANSFER, 0xFF,
			     MS_TRANSFER_START |  MS_TM_NORMAL_WRITE);
		FUNC8(chip, CHECK_REG_CMD, MS_TRANSFER,
			     MS_TRANSFER_END, MS_TRANSFER_END);

		FUNC11(chip);

		retval = FUNC12(chip, MS_CARD, ptr,	512,
						    FUNC13(chip->srb),
						    index, offset,
						    DMA_TO_DEVICE,
						    chip->ms_timeout);
		if (retval < 0) {
			FUNC4(chip, MS_TO_ERROR);
			FUNC9(chip);

			if (retval == -ETIMEDOUT)
				return STATUS_TIMEDOUT;
			return STATUS_FAIL;
		}

		retval = FUNC2(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		if ((end_page - start_page) == 1) {
			if (!(val & INT_REG_CED)) {
				FUNC4(chip, MS_FLASH_WRITE_ERROR);
				return STATUS_FAIL;
			}
		} else {
			if (page_addr == (end_page - 1)) {
				if (!(val & INT_REG_CED)) {
					retval = FUNC3(chip, BLOCK_END,
							     WAIT_INT);
					if (retval != STATUS_SUCCESS)
						return STATUS_FAIL;
				}

				retval = FUNC2(chip, GET_INT, 1,
						       NO_WAIT_INT, &val, 1);
				if (retval != STATUS_SUCCESS)
					return STATUS_FAIL;
			}

			if ((page_addr == (end_page - 1)) ||
			    (page_addr == ms_card->page_off)) {
				if (!(val & INT_REG_CED)) {
					FUNC4(chip,
							MS_FLASH_WRITE_ERROR);
					return STATUS_FAIL;
				}
			}
		}

		if (FUNC13(chip->srb) == 0)
			ptr += 512;
	}

	return STATUS_SUCCESS;
}