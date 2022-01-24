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
typedef  int u16 ;
struct ms_info {int boot_block; int block_shift; int page_off; int total_block; int capacity; int /*<<< orphan*/  ms_type; int /*<<< orphan*/  raw_sys_info; } ;
struct rtsx_chip {size_t card_wp; int* capacity; size_t* card2lun; int* card_bus_width; struct ms_info ms_card; } ;

/* Variables and functions */
 int BLOCK_OK ; 
 int BLOCK_SIZE_0 ; 
 scalar_t__ FUNC0 (struct ms_info*) ; 
 int DISABLED_BLOCK0 ; 
 int DISABLED_BLOCK3 ; 
 int HEADER_ID0 ; 
 int HEADER_ID1 ; 
 int MAX_DEFECTIVE_BLOCK ; 
 int /*<<< orphan*/  MS_4BIT ; 
 int MS_4bit_Support ; 
 int MS_BUS_WIDTH_4 ; 
 size_t MS_CARD ; 
 int MS_CFG ; 
 int MS_Device_Type ; 
 int MS_EXTRA_SIZE ; 
 int /*<<< orphan*/  MS_FLASH_WRITE_ERROR ; 
 int /*<<< orphan*/  MS_NO_CARD ; 
 int MS_NO_CHECK_INT ; 
 int /*<<< orphan*/  MS_NO_ERROR ; 
 int /*<<< orphan*/  MS_RESET ; 
 int /*<<< orphan*/  MS_TM_WRITE_BYTES ; 
 int NOT_BOOT_BLOCK ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int PAGE_SIZE_1 ; 
 int PPBUF_BASE2 ; 
 int PUSH_TIME_ODD ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemParm ; 
 int /*<<< orphan*/  TYPE_MS ; 
 int /*<<< orphan*/  WRITE_REG ; 
 int WRT_PRTCT ; 
 int FUNC1 (struct rtsx_chip*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rtsx_chip*) ; 
 int FUNC6 (struct rtsx_chip*,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (struct rtsx_chip*,int,int) ; 
 int FUNC8 (struct rtsx_chip*) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*) ; 
 int* FUNC15 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*) ; 
 int FUNC17 (struct rtsx_chip*,int,int*) ; 
 int FUNC18 (struct rtsx_chip*,size_t,int) ; 
 int FUNC19 (struct rtsx_chip*,int,int,int) ; 

__attribute__((used)) static int FUNC20(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval;
	u16 i, reg_addr, block_size;
	u8 val, extra[MS_EXTRA_SIZE], j, *ptr;
#ifndef SUPPORT_MAGIC_GATE
	u16 eblock_cnt;
#endif

	retval = FUNC5(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	ms_card->ms_type |= TYPE_MS;

	retval = FUNC9(chip, MS_RESET, NO_WAIT_INT);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC8(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC17(chip, PPBUF_BASE2, &val);
	if (retval)
		return retval;

	if (val & WRT_PRTCT)
		chip->card_wp |= MS_CARD;
	else
		chip->card_wp &= ~MS_CARD;

	i = 0;

RE_SEARCH:
	/* Search Boot Block */
	while (i < (MAX_DEFECTIVE_BLOCK + 2)) {
		if (FUNC1(chip, MS_CARD) != STATUS_SUCCESS) {
			FUNC10(chip, MS_NO_CARD);
			return STATUS_FAIL;
		}

		retval = FUNC6(chip, i, 0, extra, MS_EXTRA_SIZE);
		if (retval != STATUS_SUCCESS) {
			i++;
			continue;
		}

		if (extra[0] & BLOCK_OK) {
			if (!(extra[1] & NOT_BOOT_BLOCK)) {
				ms_card->boot_block = i;
				break;
			}
		}
		i++;
	}

	if (i == (MAX_DEFECTIVE_BLOCK + 2)) {
		FUNC2(FUNC14(chip), "No boot block found!");
		return STATUS_FAIL;
	}

	for (j = 0; j < 3; j++) {
		retval = FUNC7(chip, ms_card->boot_block, j);
		if (retval != STATUS_SUCCESS) {
			if (FUNC4(chip, MS_FLASH_WRITE_ERROR)) {
				i = ms_card->boot_block + 1;
				FUNC10(chip, MS_NO_ERROR);
				goto RE_SEARCH;
			}
		}
	}

	retval = FUNC7(chip, ms_card->boot_block, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	/* Read MS system information as sys_info */
	FUNC16(chip);

	for (i = 0; i < 96; i++)
		FUNC13(chip, READ_REG_CMD, PPBUF_BASE2 + 0x1A0 + i, 0, 0);

	retval = FUNC18(chip, MS_CARD, 100);
	if (retval < 0)
		return STATUS_FAIL;

	ptr = FUNC15(chip);
	FUNC3(ms_card->raw_sys_info, ptr, 96);

	/* Read useful block contents */
	FUNC16(chip);

	FUNC13(chip, READ_REG_CMD, HEADER_ID0, 0, 0);
	FUNC13(chip, READ_REG_CMD, HEADER_ID1, 0, 0);

	for (reg_addr = DISABLED_BLOCK0; reg_addr <= DISABLED_BLOCK3;
	     reg_addr++)
		FUNC13(chip, READ_REG_CMD, reg_addr, 0, 0);

	for (reg_addr = BLOCK_SIZE_0; reg_addr <= PAGE_SIZE_1; reg_addr++)
		FUNC13(chip, READ_REG_CMD, reg_addr, 0, 0);

	FUNC13(chip, READ_REG_CMD, MS_Device_Type, 0, 0);
	FUNC13(chip, READ_REG_CMD, MS_4bit_Support, 0, 0);

	retval = FUNC18(chip, MS_CARD, 100);
	if (retval < 0)
		return STATUS_FAIL;

	ptr = FUNC15(chip);

	FUNC2(FUNC14(chip), "Boot block data:\n");
	FUNC2(FUNC14(chip), "%*ph\n", 16, ptr);

	/* Block ID error
	 * HEADER_ID0, HEADER_ID1
	 */
	if (ptr[0] != 0x00 || ptr[1] != 0x01) {
		i = ms_card->boot_block + 1;
		goto RE_SEARCH;
	}

	/* Page size error
	 * PAGE_SIZE_0, PAGE_SIZE_1
	 */
	if (ptr[12] != 0x02 || ptr[13] != 0x00) {
		i = ms_card->boot_block + 1;
		goto RE_SEARCH;
	}

	if ((ptr[14] == 1) || (ptr[14] == 3))
		chip->card_wp |= MS_CARD;

	/* BLOCK_SIZE_0, BLOCK_SIZE_1 */
	block_size = ((u16)ptr[6] << 8) | ptr[7];
	if (block_size == 0x0010) {
		/* Block size 16KB */
		ms_card->block_shift = 5;
		ms_card->page_off = 0x1F;
	} else if (block_size == 0x0008) {
		/* Block size 8KB */
		ms_card->block_shift = 4;
		ms_card->page_off = 0x0F;
	}

	/* BLOCK_COUNT_0, BLOCK_COUNT_1 */
	ms_card->total_block = ((u16)ptr[8] << 8) | ptr[9];

#ifdef SUPPORT_MAGIC_GATE
	j = ptr[10];

	if (ms_card->block_shift == 4)  { /* 4MB or 8MB */
		if (j < 2)  { /* Effective block for 4MB: 0x1F0 */
			ms_card->capacity = 0x1EE0;
		} else { /* Effective block for 8MB: 0x3E0 */
			ms_card->capacity = 0x3DE0;
		}
	} else  { /* 16MB, 32MB, 64MB or 128MB */
		if (j < 5)  { /* Effective block for 16MB: 0x3E0 */
			ms_card->capacity = 0x7BC0;
		} else if (j < 0xA) { /* Effective block for 32MB: 0x7C0 */
			ms_card->capacity = 0xF7C0;
		} else if (j < 0x11) { /* Effective block for 64MB: 0xF80 */
			ms_card->capacity = 0x1EF80;
		} else { /* Effective block for 128MB: 0x1F00 */
			ms_card->capacity = 0x3DF00;
		}
	}
#else
	/* EBLOCK_COUNT_0, EBLOCK_COUNT_1 */
	eblock_cnt = ((u16)ptr[10] << 8) | ptr[11];

	ms_card->capacity = ((u32)eblock_cnt - 2) << ms_card->block_shift;
#endif

	chip->capacity[chip->card2lun[MS_CARD]] = ms_card->capacity;

	/* Switch I/F Mode */
	if (ptr[15]) {
		retval = FUNC11(chip, 0, 0, SystemParm, 1);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC19(chip, PPBUF_BASE2, 0xFF, 0x88);
		if (retval)
			return retval;

		retval = FUNC19(chip, PPBUF_BASE2 + 1, 0xFF, 0);
		if (retval)
			return retval;

		retval = FUNC12(chip, MS_TM_WRITE_BYTES, WRITE_REG, 1,
					 NO_WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC19(chip, MS_CFG,
					     0x58 | MS_NO_CHECK_INT,
					     MS_BUS_WIDTH_4 |
					     PUSH_TIME_ODD |
					     MS_NO_CHECK_INT);
		if (retval)
			return retval;

		ms_card->ms_type |= MS_4BIT;
	}

	if (FUNC0(ms_card))
		chip->card_bus_width[chip->card2lun[MS_CARD]] = 4;
	else
		chip->card_bus_width[chip->card2lun[MS_CARD]] = 1;

	return STATUS_SUCCESS;
}