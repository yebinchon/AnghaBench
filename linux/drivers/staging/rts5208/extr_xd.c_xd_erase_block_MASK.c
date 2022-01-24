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
struct xd_info {int block_shift; } ;
struct rtsx_chip {struct xd_info xd_card; } ;

/* Variables and functions */
 int BLK_NOT_FOUND ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int PROGRAM_ERROR ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  XD_CARD ; 
 int /*<<< orphan*/  XD_DAT ; 
 int XD_ERASE ; 
 int /*<<< orphan*/  XD_ERASE_ADDR ; 
 int /*<<< orphan*/  XD_ERASE_FAIL ; 
 int /*<<< orphan*/  XD_PRG_ERROR ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int* FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int) ; 
 int FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rtsx_chip *chip, u32 phy_blk)
{
	struct xd_info *xd_card = &chip->xd_card;
	u32 page_addr;
	u8 reg = 0, *ptr;
	int i, retval;

	if (phy_blk == BLK_NOT_FOUND)
		return STATUS_FAIL;

	page_addr = phy_blk << xd_card->block_shift;

	for (i = 0; i < 3; i++) {
		FUNC3(chip);

		FUNC6(chip, page_addr, XD_ERASE_ADDR);

		FUNC0(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
			     XD_TRANSFER_START | XD_ERASE);
		FUNC0(chip, CHECK_REG_CMD, XD_TRANSFER,
			     XD_TRANSFER_END, XD_TRANSFER_END);
		FUNC0(chip, READ_REG_CMD, XD_DAT, 0, 0);

		retval = FUNC5(chip, XD_CARD, 250);
		if (retval < 0) {
			FUNC1(chip);
			FUNC4(chip, XD_DAT, &reg);
			if (reg & PROGRAM_ERROR) {
				FUNC7(chip, phy_blk);
				FUNC9(chip, XD_PRG_ERROR);
				return STATUS_FAIL;
			}
			FUNC9(chip, XD_ERASE_FAIL);
			retval = FUNC8(chip);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;
			continue;
		}

		ptr = FUNC2(chip) + 1;
		if (*ptr & PROGRAM_ERROR) {
			FUNC7(chip, phy_blk);
			FUNC9(chip, XD_PRG_ERROR);
			return STATUS_FAIL;
		}

		return STATUS_SUCCESS;
	}

	FUNC7(chip, phy_blk);
	FUNC9(chip, XD_ERASE_FAIL);
	return STATUS_FAIL;
}