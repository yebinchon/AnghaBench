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
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC6(struct rtsx_chip *chip, u16 block_addr,
			       u8 page_num, u8 *buf, int buf_len)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;
	u8 val, data[16];

	if (!buf || (buf_len < MS_EXTRA_SIZE))
		return STATUS_FAIL;

	retval = FUNC4(chip, OverwriteFlag, MS_EXTRA_SIZE,
				    SystemParm, 6 + MS_EXTRA_SIZE);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (FUNC0(ms_card))
		data[0] = 0x88;
	else
		data[0] = 0x80;

	data[1] = 0;
	data[2] = (u8)(block_addr >> 8);
	data[3] = (u8)block_addr;
	data[4] = 0x40;
	data[5] = page_num;

	for (i = 6; i < MS_EXTRA_SIZE + 6; i++)
		data[i] = buf[i - 6];

	retval = FUNC5(chip, WRITE_REG, (6 + MS_EXTRA_SIZE),
				NO_WAIT_INT, data, 16);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC2(chip, BLOCK_WRITE, WAIT_INT);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC3(chip, MS_NO_ERROR);
	retval = FUNC1(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (val & INT_REG_CMDNK) {
		FUNC3(chip, MS_CMD_NK);
		return STATUS_FAIL;
	}
	if (val & INT_REG_CED) {
		if (val & INT_REG_ERR) {
			FUNC3(chip, MS_FLASH_WRITE_ERROR);
			return STATUS_FAIL;
		}
	}

	return STATUS_SUCCESS;
}