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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 scalar_t__ XD_ADDRESS1 ; 
 int /*<<< orphan*/  XD_CARD ; 
 int /*<<< orphan*/  XD_DAT ; 
 int XD_READ_ID ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int* FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct rtsx_chip *chip, u8 id_cmd, u8 *id_buf, u8 buf_len)
{
	int retval, i;
	u8 *ptr;

	FUNC3(chip);

	FUNC1(chip, WRITE_REG_CMD, XD_DAT, 0xFF, id_cmd);
	FUNC1(chip, WRITE_REG_CMD, XD_TRANSFER, 0xFF,
		     XD_TRANSFER_START | XD_READ_ID);
	FUNC1(chip, CHECK_REG_CMD, XD_TRANSFER, XD_TRANSFER_END,
		     XD_TRANSFER_END);

	for (i = 0; i < 4; i++)
		FUNC1(chip, READ_REG_CMD, (u16)(XD_ADDRESS1 + i), 0, 0);

	retval = FUNC4(chip, XD_CARD, 20);
	if (retval < 0)
		return STATUS_FAIL;

	ptr = FUNC2(chip) + 1;
	if (id_buf && buf_len) {
		if (buf_len > 4)
			buf_len = 4;
		FUNC0(id_buf, ptr, buf_len);
	}

	return STATUS_SUCCESS;
}