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
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_READ ; 
 int /*<<< orphan*/  BLOCK_WRITE ; 
 int BUF_FULL ; 
 scalar_t__ FUNC0 (struct ms_info*) ; 
 int /*<<< orphan*/  CLEAR_BUF ; 
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
 int /*<<< orphan*/  FUNC1 (struct ms_info*) ; 
 int /*<<< orphan*/  MS_TM_NORMAL_READ ; 
 int /*<<< orphan*/  MS_TM_NORMAL_WRITE ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int /*<<< orphan*/  OverwriteFlag ; 
 int /*<<< orphan*/  PPBUF_BASE2 ; 
 int /*<<< orphan*/  READ_PAGE_DATA ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemParm ; 
 int /*<<< orphan*/  WAIT_INT ; 
 int /*<<< orphan*/  WRITE_PAGE_DATA ; 
 int /*<<< orphan*/  WRITE_REG ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (struct rtsx_chip*,int,int,int*,int) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*) ; 
 int FUNC15 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  setPS_Error ; 
 int /*<<< orphan*/  setPS_NG ; 

__attribute__((used)) static int FUNC16(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
			u16 log_blk, u8 start_page, u8 end_page)
{
	struct ms_info *ms_card = &chip->ms_card;
	bool uncorrect_flag = false;
	int retval, rty_cnt;
	u8 extra[MS_EXTRA_SIZE], val, i, j, data[16];

	FUNC3(FUNC14(chip), "Copy page from 0x%x to 0x%x, logical block is 0x%x\n",
		old_blk, new_blk, log_blk);
	FUNC3(FUNC14(chip), "start_page = %d, end_page = %d\n",
		start_page, end_page);

	retval = FUNC5(chip, new_blk, 0, extra, MS_EXTRA_SIZE);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC6(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC15(chip, PPBUF_BASE2, &val);
	if (retval)
		return retval;

	if (val & BUF_FULL) {
		retval = FUNC7(chip, CLEAR_BUF, WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC4(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		if (!(val & INT_REG_CED)) {
			FUNC8(chip, MS_FLASH_WRITE_ERROR);
			return STATUS_FAIL;
		}
	}

	for (i = start_page; i < end_page; i++) {
		if (FUNC2(chip, MS_CARD) != STATUS_SUCCESS) {
			FUNC8(chip, MS_NO_CARD);
			return STATUS_FAIL;
		}

		retval = FUNC5(chip, old_blk, i, extra,
					    MS_EXTRA_SIZE);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC10(chip, OverwriteFlag,
					    MS_EXTRA_SIZE, SystemParm, 6);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		FUNC8(chip, MS_NO_ERROR);

		if (FUNC0(ms_card))
			data[0] = 0x88;
		else
			data[0] = 0x80;

		data[1] = 0;
		data[2] = (u8)(old_blk >> 8);
		data[3] = (u8)old_blk;
		data[4] = 0x20;
		data[5] = i;

		retval = FUNC12(chip, WRITE_REG, 6, NO_WAIT_INT,
					data, 6);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC7(chip, BLOCK_READ, WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		FUNC8(chip, MS_NO_ERROR);
		retval = FUNC4(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		if (val & INT_REG_CMDNK) {
			FUNC8(chip, MS_CMD_NK);
			return STATUS_FAIL;
		}

		if (val & INT_REG_CED) {
			if (val & INT_REG_ERR) {
				retval = FUNC6(chip);
				if (retval != STATUS_SUCCESS) {
					uncorrect_flag = true;
					FUNC3(FUNC14(chip), "Uncorrectable error\n");
				} else {
					uncorrect_flag = false;
				}

				retval = FUNC11(chip,
							 MS_TM_NORMAL_READ,
							 READ_PAGE_DATA,
							 0, NO_WAIT_INT);
				if (retval != STATUS_SUCCESS)
					return STATUS_FAIL;

				if (uncorrect_flag) {
					FUNC9(log_blk, setPS_NG,
							   extra,
							   MS_EXTRA_SIZE);
					if (i == 0)
						extra[0] &= 0xEF;

					FUNC13(chip, old_blk, i,
							    extra,
							    MS_EXTRA_SIZE);
					FUNC3(FUNC14(chip), "page %d : extra[0] = 0x%x\n",
						i, extra[0]);
					FUNC1(ms_card);

					FUNC9(log_blk, setPS_Error,
							   extra,
							   MS_EXTRA_SIZE);
					FUNC13(chip, new_blk, i,
							    extra,
							    MS_EXTRA_SIZE);
					continue;
				}

				for (rty_cnt = 0; rty_cnt < MS_MAX_RETRY_COUNT;
				     rty_cnt++) {
					retval = FUNC11(
						chip,
						MS_TM_NORMAL_WRITE,
						WRITE_PAGE_DATA,
						0, NO_WAIT_INT);
					if (retval == STATUS_SUCCESS)
						break;
				}
				if (rty_cnt == MS_MAX_RETRY_COUNT)
					return STATUS_FAIL;
			}

			if (!(val & INT_REG_BREQ)) {
				FUNC8(chip, MS_BREQ_ERROR);
				return STATUS_FAIL;
			}
		}

		retval = FUNC10(chip, OverwriteFlag, MS_EXTRA_SIZE,
					    SystemParm, (6 + MS_EXTRA_SIZE));

		FUNC8(chip, MS_NO_ERROR);

		if (FUNC0(ms_card))
			data[0] = 0x88;
		else
			data[0] = 0x80;

		data[1] = 0;
		data[2] = (u8)(new_blk >> 8);
		data[3] = (u8)new_blk;
		data[4] = 0x20;
		data[5] = i;

		if ((extra[0] & 0x60) != 0x60)
			data[6] = extra[0];
		else
			data[6] = 0xF8;

		data[6 + 1] = 0xFF;
		data[6 + 2] = (u8)(log_blk >> 8);
		data[6 + 3] = (u8)log_blk;

		for (j = 4; j <= MS_EXTRA_SIZE; j++)
			data[6 + j] = 0xFF;

		retval = FUNC12(chip, WRITE_REG, (6 + MS_EXTRA_SIZE),
					NO_WAIT_INT, data, 16);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC7(chip, BLOCK_WRITE, WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		FUNC8(chip, MS_NO_ERROR);
		retval = FUNC4(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		if (val & INT_REG_CMDNK) {
			FUNC8(chip, MS_CMD_NK);
			return STATUS_FAIL;
		}

		if (val & INT_REG_CED) {
			if (val & INT_REG_ERR) {
				FUNC8(chip, MS_FLASH_WRITE_ERROR);
				return STATUS_FAIL;
			}
		}

		if (i == 0) {
			retval = FUNC10(chip, OverwriteFlag,
						    MS_EXTRA_SIZE, SystemParm,
						    7);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			FUNC8(chip, MS_NO_ERROR);

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

			retval = FUNC12(chip, WRITE_REG, 7,
						NO_WAIT_INT, data, 8);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			retval = FUNC7(chip, BLOCK_WRITE, WAIT_INT);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			FUNC8(chip, MS_NO_ERROR);
			retval = FUNC4(chip, GET_INT, 1,
					       NO_WAIT_INT, &val, 1);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			if (val & INT_REG_CMDNK) {
				FUNC8(chip, MS_CMD_NK);
				return STATUS_FAIL;
			}

			if (val & INT_REG_CED) {
				if (val & INT_REG_ERR) {
					FUNC8(chip,
							MS_FLASH_WRITE_ERROR);
					return STATUS_FAIL;
				}
			}
		}
	}

	return STATUS_SUCCESS;
}