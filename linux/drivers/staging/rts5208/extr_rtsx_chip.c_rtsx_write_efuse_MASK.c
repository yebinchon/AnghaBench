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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_CTRL ; 
 int /*<<< orphan*/  EFUSE_DATA ; 
 int STATUS_SUCCESS ; 
 int STATUS_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct rtsx_chip *chip, u8 addr, u8 val)
{
	int retval;
	int i, j;
	u8 data = 0, tmp = 0xFF;

	for (i = 0; i < 8; i++) {
		if (val & (u8)(1 << i))
			continue;

		tmp &= (~(u8)(1 << i));
		FUNC0(FUNC1(chip), "Write 0x%x to 0x%x\n", tmp, addr);

		retval = FUNC3(chip, EFUSE_DATA, 0xFF, tmp);
		if (retval)
			return retval;
		retval = FUNC3(chip, EFUSE_CTRL, 0xFF,
					     0xA0 | addr);
		if (retval)
			return retval;

		for (j = 0; j < 100; j++) {
			retval = FUNC2(chip, EFUSE_CTRL, &data);
			if (retval)
				return retval;
			if (!(data & 0x80))
				break;
			FUNC4(3);
		}

		if (data & 0x80)
			return STATUS_TIMEDOUT;

		FUNC4(5);
	}

	return STATUS_SUCCESS;
}