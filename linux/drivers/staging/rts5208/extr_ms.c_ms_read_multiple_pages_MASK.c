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
struct ms_info {int dummy; } ;
struct rtsx_chip {int card_wp; int /*<<< orphan*/  srb; int /*<<< orphan*/  ms_timeout; struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_END ; 
 int /*<<< orphan*/  BLOCK_READ ; 
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 scalar_t__ FUNC0 (struct ms_info*) ; 
 int /*<<< orphan*/  DMA_512 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GET_INT ; 
 int INT_REG_BREQ ; 
 int INT_REG_CED ; 
 int INT_REG_CMDNK ; 
 int INT_REG_ERR ; 
 int /*<<< orphan*/  MS_BREQ_ERROR ; 
 int MS_CARD ; 
 int /*<<< orphan*/  MS_CMD_NK ; 
 int MS_CRC16_ERR ; 
 int /*<<< orphan*/  MS_CRC16_ERROR ; 
 int MS_EXTRA_SIZE ; 
 int /*<<< orphan*/  MS_FLASH_READ_ERROR ; 
 int MS_MAX_RETRY_COUNT ; 
 int /*<<< orphan*/  MS_NO_CARD ; 
 int /*<<< orphan*/  MS_NO_ERROR ; 
 int MS_RDY_TIMEOUT ; 
 int MS_TM_NORMAL_READ ; 
 int /*<<< orphan*/  MS_TO_ERROR ; 
 int /*<<< orphan*/  MS_TPC ; 
 int /*<<< orphan*/  MS_TRANSFER ; 
 int MS_TRANSFER_END ; 
 int MS_TRANSFER_START ; 
 int /*<<< orphan*/  MS_TRANS_CFG ; 
 int NO_WAIT_INT ; 
 int /*<<< orphan*/  OverwriteFlag ; 
 int READ_PAGE_DATA ; 
 int RING_BUFFER ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int STATUS_TIMEDOUT ; 
 int /*<<< orphan*/  SystemParm ; 
 int WAIT_INT ; 
 int /*<<< orphan*/  WRITE_REG ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int FUNC1 (struct rtsx_chip*,int) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int,int*,int) ; 
 int FUNC3 (struct rtsx_chip*,int,int,int*,int) ; 
 int FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*) ; 
 int FUNC15 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*) ; 
 int FUNC17 (struct rtsx_chip*,int,int*,int,scalar_t__,unsigned int*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setPS_NG ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct rtsx_chip *chip, u16 phy_blk,
				  u16 log_blk, u8 start_page, u8 end_page,
				  u8 *buf, unsigned int *index,
				  unsigned int *offset)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;
	u8 extra[MS_EXTRA_SIZE], page_addr, val, trans_cfg, data[6];
	u8 *ptr;

	retval = FUNC3(chip, phy_blk, start_page,
				    extra, MS_EXTRA_SIZE);
	if (retval == STATUS_SUCCESS) {
		if ((extra[1] & 0x30) != 0x30) {
			FUNC6(chip, MS_FLASH_READ_ERROR);
			return STATUS_FAIL;
		}
	}

	retval = FUNC8(chip, OverwriteFlag, MS_EXTRA_SIZE,
				    SystemParm, 6);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (FUNC0(ms_card))
		data[0] = 0x88;
	else
		data[0] = 0x80;

	data[1] = 0;
	data[2] = (u8)(phy_blk >> 8);
	data[3] = (u8)phy_blk;
	data[4] = 0;
	data[5] = start_page;

	for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
		retval = FUNC9(chip, WRITE_REG, 6, NO_WAIT_INT,
					data, 6);
		if (retval == STATUS_SUCCESS)
			break;
	}
	if (i == MS_MAX_RETRY_COUNT)
		return STATUS_FAIL;

	FUNC6(chip, MS_NO_ERROR);

	retval = FUNC5(chip, BLOCK_READ, WAIT_INT);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	ptr = buf;

	for (page_addr = start_page; page_addr < end_page; page_addr++) {
		FUNC6(chip, MS_NO_ERROR);

		if (FUNC1(chip, MS_CARD) != STATUS_SUCCESS) {
			FUNC6(chip, MS_NO_CARD);
			return STATUS_FAIL;
		}

		retval = FUNC2(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		if (val & INT_REG_CMDNK) {
			FUNC6(chip, MS_CMD_NK);
			return STATUS_FAIL;
		}
		if (val & INT_REG_ERR) {
			if (val & INT_REG_BREQ) {
				retval = FUNC4(chip);
				if (retval != STATUS_SUCCESS) {
					if (!(chip->card_wp & MS_CARD)) {
						FUNC11(chip);
						FUNC7
							(log_blk, setPS_NG,
							 extra,
							 MS_EXTRA_SIZE);
						FUNC10
							(chip, phy_blk,
							 page_addr, extra,
							 MS_EXTRA_SIZE);
					}
					FUNC6(chip,
							MS_FLASH_READ_ERROR);
					return STATUS_FAIL;
				}
			} else {
				FUNC6(chip, MS_FLASH_READ_ERROR);
				return STATUS_FAIL;
			}
		} else {
			if (!(val & INT_REG_BREQ)) {
				FUNC6(chip, MS_BREQ_ERROR);
				return STATUS_FAIL;
			}
		}

		if (page_addr == (end_page - 1)) {
			if (!(val & INT_REG_CED)) {
				retval = FUNC5(chip, BLOCK_END, WAIT_INT);
				if (retval != STATUS_SUCCESS)
					return STATUS_FAIL;
			}

			retval = FUNC2(chip, GET_INT, 1, NO_WAIT_INT,
					       &val, 1);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			if (!(val & INT_REG_CED)) {
				FUNC6(chip, MS_FLASH_READ_ERROR);
				return STATUS_FAIL;
			}

			trans_cfg = NO_WAIT_INT;
		} else {
			trans_cfg = WAIT_INT;
		}

		FUNC14(chip);

		FUNC12(chip, WRITE_REG_CMD, MS_TPC, 0xFF, READ_PAGE_DATA);
		FUNC12(chip, WRITE_REG_CMD, MS_TRANS_CFG,
			     0xFF, trans_cfg);
		FUNC12(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
			     0x01, RING_BUFFER);

		FUNC19(DMA_FROM_DEVICE, chip, 512, DMA_512);

		FUNC12(chip, WRITE_REG_CMD, MS_TRANSFER, 0xFF,
			     MS_TRANSFER_START |  MS_TM_NORMAL_READ);
		FUNC12(chip, CHECK_REG_CMD, MS_TRANSFER,
			     MS_TRANSFER_END, MS_TRANSFER_END);

		FUNC16(chip);

		retval = FUNC17(chip, MS_CARD, ptr, 512,
						    FUNC18(chip->srb),
						    index, offset,
						    DMA_FROM_DEVICE,
						    chip->ms_timeout);
		if (retval < 0) {
			if (retval == -ETIMEDOUT) {
				FUNC6(chip, MS_TO_ERROR);
				FUNC13(chip);
				return STATUS_TIMEDOUT;
			}

			retval = FUNC15(chip, MS_TRANS_CFG, &val);
			if (retval != STATUS_SUCCESS) {
				FUNC6(chip, MS_TO_ERROR);
				FUNC13(chip);
				return STATUS_TIMEDOUT;
			}
			if (val & (MS_CRC16_ERR | MS_RDY_TIMEOUT)) {
				FUNC6(chip, MS_CRC16_ERROR);
				FUNC13(chip);
				return STATUS_FAIL;
			}
		}

		if (FUNC18(chip->srb) == 0)
			ptr += 512;
	}

	return STATUS_SUCCESS;
}