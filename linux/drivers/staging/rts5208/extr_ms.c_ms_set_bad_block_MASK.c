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
 int /*<<< orphan*/  BLOCK_WRITE ; 
 scalar_t__ FUNC0 (struct ms_info*) ; 
 int /*<<< orphan*/  GET_INT ; 
 int INT_REG_CED ; 
 int INT_REG_CMDNK ; 
 int INT_REG_ERR ; 
 int /*<<< orphan*/  MS_CMD_NK ; 
 int MS_EXTRA_SIZE ; 
 int /*<<< orphan*/  MS_FLASH_WRITE_ERROR ; 
 int /*<<< orphan*/  MS_NO_ERROR ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int /*<<< orphan*/  OverwriteFlag ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemParm ; 
 int /*<<< orphan*/  WAIT_INT ; 
 int /*<<< orphan*/  WRITE_REG ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (struct rtsx_chip*,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC7(struct rtsx_chip *chip, u16 phy_blk)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval;
	u8 val, data[8], extra[MS_EXTRA_SIZE];

	retval = FUNC2(chip, phy_blk, 0, extra, MS_EXTRA_SIZE);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC5(chip, OverwriteFlag, MS_EXTRA_SIZE,
				    SystemParm, 7);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC4(chip, MS_NO_ERROR);

	if (FUNC0(ms_card))
		data[0] = 0x88;
	else
		data[0] = 0x80;

	data[1] = 0;
	data[2] = (u8)(phy_blk >> 8);
	data[3] = (u8)phy_blk;
	data[4] = 0x80;
	data[5] = 0;
	data[6] = extra[0] & 0x7F;
	data[7] = 0xFF;

	retval = FUNC6(chip, WRITE_REG, 7, NO_WAIT_INT, data, 7);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC3(chip, BLOCK_WRITE, WAIT_INT);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC4(chip, MS_NO_ERROR);
	retval = FUNC1(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (val & INT_REG_CMDNK) {
		FUNC4(chip, MS_CMD_NK);
		return STATUS_FAIL;
	}

	if (val & INT_REG_CED) {
		if (val & INT_REG_ERR) {
			FUNC4(chip, MS_FLASH_WRITE_ERROR);
			return STATUS_FAIL;
		}
	}

	return STATUS_SUCCESS;
}