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
typedef  int u16 ;
struct xd_info {int block_shift; } ;
struct rtsx_chip {struct xd_info xd_card; } ;

/* Variables and functions */
 int BLK_NOT_FOUND ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 scalar_t__ PROGRAM_ERROR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int XD_BA_TRANSFORM ; 
 int /*<<< orphan*/  XD_BLOCK_ADDR1_H ; 
 int /*<<< orphan*/  XD_BLOCK_ADDR1_L ; 
 int /*<<< orphan*/  XD_BLOCK_STATUS ; 
 int /*<<< orphan*/  XD_CARD ; 
 int /*<<< orphan*/  XD_CFG ; 
 int /*<<< orphan*/  XD_DAT ; 
 int /*<<< orphan*/  XD_PAGE_CNT ; 
 int /*<<< orphan*/  XD_PAGE_STATUS ; 
 int /*<<< orphan*/  XD_PRG_ERROR ; 
 int /*<<< orphan*/  XD_RW_ADDR ; 
 int /*<<< orphan*/  XD_TO_ERROR ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int XD_WRITE_REDUNDANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rtsx_chip *chip, u32 phy_blk,
			u16 logoff, u8 start_page, u8 end_page)
{
	struct xd_info *xd_card = &chip->xd_card;
	int retval;
	u32 page_addr;
	u8 reg = 0;

	FUNC0(FUNC3(chip), "Init block 0x%x\n", phy_blk);

	if (start_page > end_page)
		return STATUS_FAIL;
	if (phy_blk == BLK_NOT_FOUND)
		return STATUS_FAIL;

	FUNC4(chip);

	FUNC1(chip, WRITE_REG_CMD, XD_PAGE_STATUS, 0xFF, 0xFF);
	FUNC1(chip, WRITE_REG_CMD, XD_BLOCK_STATUS, 0xFF, 0xFF);
	FUNC1(chip, WRITE_REG_CMD, XD_BLOCK_ADDR1_H,
		     0xFF, (u8)(logoff >> 8));
	FUNC1(chip, WRITE_REG_CMD, XD_BLOCK_ADDR1_L, 0xFF, (u8)logoff);

	page_addr = (phy_blk << xd_card->block_shift) + start_page;

	FUNC7(chip, page_addr, XD_RW_ADDR);

	FUNC1(chip, WRITE_REG_CMD, XD_CFG,
		     XD_BA_TRANSFORM, XD_BA_TRANSFORM);

	FUNC1(chip, WRITE_REG_CMD, XD_PAGE_CNT,
		     0xFF, (end_page - start_page));

	FUNC1(chip, WRITE_REG_CMD, XD_TRANSFER,
		     0xFF, XD_TRANSFER_START | XD_WRITE_REDUNDANT);
	FUNC1(chip, CHECK_REG_CMD, XD_TRANSFER,
		     XD_TRANSFER_END, XD_TRANSFER_END);

	retval = FUNC6(chip, XD_CARD, 500);
	if (retval < 0) {
		FUNC2(chip);
		FUNC5(chip, XD_DAT, &reg);
		if (reg & PROGRAM_ERROR) {
			FUNC8(chip, phy_blk);
			FUNC9(chip, XD_PRG_ERROR);
		} else {
			FUNC9(chip, XD_TO_ERROR);
		}
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}