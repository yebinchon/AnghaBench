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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  XD_CARD ; 
 scalar_t__ XD_PAGE_STATUS ; 
 int /*<<< orphan*/  XD_PARITY ; 
 int XD_READ_REDUNDANT ; 
 scalar_t__ XD_RESERVED0 ; 
 int /*<<< orphan*/  XD_RW_ADDR ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rtsx_chip *chip, u32 page_addr,
			     u8 *buf, int buf_len)
{
	int retval, i;

	FUNC3(chip);

	FUNC5(chip, page_addr, XD_RW_ADDR);

	FUNC1(chip, WRITE_REG_CMD, XD_TRANSFER,
		     0xFF, XD_TRANSFER_START | XD_READ_REDUNDANT);
	FUNC1(chip, CHECK_REG_CMD, XD_TRANSFER,
		     XD_TRANSFER_END, XD_TRANSFER_END);

	for (i = 0; i < 6; i++)
		FUNC1(chip, READ_REG_CMD, (u16)(XD_PAGE_STATUS + i),
			     0, 0);
	for (i = 0; i < 4; i++)
		FUNC1(chip, READ_REG_CMD, (u16)(XD_RESERVED0 + i),
			     0, 0);
	FUNC1(chip, READ_REG_CMD, XD_PARITY, 0, 0);

	retval = FUNC4(chip, XD_CARD, 500);
	if (retval < 0)
		return STATUS_FAIL;

	if (buf && buf_len) {
		u8 *ptr = FUNC2(chip) + 1;

		if (buf_len > 11)
			buf_len = 11;
		FUNC0(buf, ptr, buf_len);
	}

	return STATUS_SUCCESS;
}