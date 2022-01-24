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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct xd_info {int block_shift; } ;
struct rtsx_chip {struct xd_info xd_card; } ;

/* Variables and functions */
 int BLK_NOT_FOUND ; 
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  PINGPONG_BUFFER ; 
 scalar_t__ PROGRAM_ERROR ; 
 int STATUS_FAIL ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int XD_AUTO_CHK_DATA_STATUS ; 
 int /*<<< orphan*/  XD_BLOCK_STATUS ; 
 int /*<<< orphan*/  XD_BPG ; 
 int /*<<< orphan*/  XD_CARD ; 
 scalar_t__ FUNC0 (struct xd_info*) ; 
 int /*<<< orphan*/  XD_CHK_DATA_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct xd_info*) ; 
 int /*<<< orphan*/  XD_CTL ; 
 int /*<<< orphan*/  XD_DAT ; 
 scalar_t__ XD_ECC1_ERROR ; 
 scalar_t__ XD_ECC1_UNCORRECTABLE ; 
 scalar_t__ XD_ECC2_ERROR ; 
 scalar_t__ XD_ECC2_UNCORRECTABLE ; 
 int /*<<< orphan*/  XD_GBLK ; 
 int /*<<< orphan*/  XD_NO_CARD ; 
 int /*<<< orphan*/  XD_PAGE_CNT ; 
 int /*<<< orphan*/  XD_PAGE_STATUS ; 
 int /*<<< orphan*/  XD_PRG_ERROR ; 
 int XD_READ_PAGES ; 
 int /*<<< orphan*/  XD_RW_ADDR ; 
 int /*<<< orphan*/  FUNC2 (struct xd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xd_info*) ; 
 int /*<<< orphan*/  XD_TO_ERROR ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int XD_WRITE_PAGES ; 
 scalar_t__ FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct rtsx_chip *chip, u32 old_blk, u32 new_blk,
			u8 start_page, u8 end_page)
{
	struct xd_info *xd_card = &chip->xd_card;
	u32 old_page, new_page;
	u8 i, reg = 0;
	int retval;

	FUNC5(FUNC9(chip), "Copy page from block 0x%x to block 0x%x\n",
		old_blk, new_blk);

	if (start_page > end_page)
		return STATUS_FAIL;

	if ((old_blk == BLK_NOT_FOUND) || (new_blk == BLK_NOT_FOUND))
		return STATUS_FAIL;

	old_page = (old_blk << xd_card->block_shift) + start_page;
	new_page = (new_blk << xd_card->block_shift) + start_page;

	FUNC1(xd_card);

	retval = FUNC13(chip, CARD_DATA_SOURCE, 0x01,
				     PINGPONG_BUFFER);
	if (retval)
		return retval;

	for (i = start_page; i < end_page; i++) {
		if (FUNC4(chip, XD_CARD) != STATUS_SUCCESS) {
			FUNC8(chip);
			FUNC16(chip, XD_NO_CARD);
			return STATUS_FAIL;
		}

		FUNC10(chip);

		FUNC14(chip, old_page, XD_RW_ADDR);

		FUNC7(chip, WRITE_REG_CMD, XD_PAGE_CNT, 0xFF, 1);
		FUNC7(chip, WRITE_REG_CMD, XD_CHK_DATA_STATUS,
			     XD_AUTO_CHK_DATA_STATUS, 0);
		FUNC7(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
			     XD_TRANSFER_START | XD_READ_PAGES);
		FUNC7(chip, CHECK_REG_CMD, XD_TRANSFER,
			     XD_TRANSFER_END, XD_TRANSFER_END);

		retval = FUNC12(chip, XD_CARD, 500);
		if (retval < 0) {
			FUNC8(chip);
			reg = 0;
			FUNC11(chip, XD_CTL, &reg);
			if (reg & (XD_ECC1_ERROR | XD_ECC2_ERROR)) {
				FUNC6(100);

				if (FUNC4(chip,
						   XD_CARD) != STATUS_SUCCESS) {
					FUNC16(chip, XD_NO_CARD);
					return STATUS_FAIL;
				}

				if (((reg & XD_ECC1_ERROR) &&
				     (reg & XD_ECC1_UNCORRECTABLE)) ||
				    ((reg & XD_ECC2_ERROR) &&
				     (reg & XD_ECC2_UNCORRECTABLE))) {
					FUNC13(chip,
							    XD_PAGE_STATUS,
							    0xFF,
							    XD_BPG);
					FUNC13(chip,
							    XD_BLOCK_STATUS,
							    0xFF,
							    XD_GBLK);
					FUNC3(xd_card);
					FUNC5(FUNC9(chip), "old block 0x%x ecc error\n",
						old_blk);
				}
			} else {
				FUNC16(chip, XD_TO_ERROR);
				return STATUS_FAIL;
			}
		}

		if (FUNC0(xd_card))
			FUNC8(chip);

		FUNC10(chip);

		FUNC14(chip, new_page, XD_RW_ADDR);
		FUNC7(chip, WRITE_REG_CMD, XD_PAGE_CNT, 0xFF, 1);
		FUNC7(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
			     XD_TRANSFER_START | XD_WRITE_PAGES);
		FUNC7(chip, CHECK_REG_CMD, XD_TRANSFER,
			     XD_TRANSFER_END, XD_TRANSFER_END);

		retval = FUNC12(chip, XD_CARD, 300);
		if (retval < 0) {
			FUNC8(chip);
			reg = 0;
			FUNC11(chip, XD_DAT, &reg);
			if (reg & PROGRAM_ERROR) {
				FUNC15(chip, new_blk);
				FUNC16(chip, XD_PRG_ERROR);
				FUNC2(xd_card);
			} else {
				FUNC16(chip, XD_TO_ERROR);
			}
			return STATUS_FAIL;
		}

		old_page++;
		new_page++;
	}

	return STATUS_SUCCESS;
}