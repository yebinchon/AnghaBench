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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ PPBUF_BASE2 ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct rtsx_chip *chip, int offset,
				 u8 *buf, int buf_len)
{
	int retval, i;

	if (!buf || (buf_len < 0))
		return STATUS_FAIL;

	FUNC4(chip);

	for (i = 0; i < buf_len; i++)
		FUNC1(chip, READ_REG_CMD, PPBUF_BASE2 + offset + i,
			     0, 0);

	retval = FUNC5(chip, 0, 250);
	if (retval < 0) {
		FUNC2(chip);
		return STATUS_FAIL;
	}

	FUNC0(buf, FUNC3(chip), buf_len);

	return STATUS_SUCCESS;
}