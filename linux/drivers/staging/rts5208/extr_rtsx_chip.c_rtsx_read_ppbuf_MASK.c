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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPBUF_BASE2 ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_ERROR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct rtsx_chip *chip, u8 *buf, int buf_len)
{
	int retval;
	int i, j;
	u16 reg_addr;
	u8 *ptr;

	if (!buf)
		return STATUS_ERROR;

	ptr = buf;
	reg_addr = PPBUF_BASE2;
	for (i = 0; i < buf_len / 256; i++) {
		FUNC3(chip);

		for (j = 0; j < 256; j++)
			FUNC1(chip, READ_REG_CMD, reg_addr++, 0, 0);

		retval = FUNC4(chip, 0, 250);
		if (retval < 0)
			return STATUS_FAIL;

		FUNC0(ptr, FUNC2(chip), 256);
		ptr += 256;
	}

	if (buf_len % 256) {
		FUNC3(chip);

		for (j = 0; j < buf_len % 256; j++)
			FUNC1(chip, READ_REG_CMD, reg_addr++, 0, 0);

		retval = FUNC4(chip, 0, 250);
		if (retval < 0)
			return STATUS_FAIL;
	}

	FUNC0(ptr, FUNC2(chip), buf_len % 256);

	return STATUS_SUCCESS;
}