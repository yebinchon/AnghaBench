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
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct rtsx_chip *chip, u8 addr, u8 *val)
{
	int retval;
	int i;
	u8 data = 0;

	retval = FUNC1(chip, EFUSE_CTRL, 0xFF, 0x80 | addr);
	if (retval)
		return retval;

	for (i = 0; i < 100; i++) {
		retval = FUNC0(chip, EFUSE_CTRL, &data);
		if (retval)
			return retval;
		if (!(data & 0x80))
			break;
		FUNC2(1);
	}

	if (data & 0x80)
		return STATUS_TIMEDOUT;

	retval = FUNC0(chip, EFUSE_DATA, &data);
	if (retval)
		return retval;
	if (val)
		*val = data;

	return STATUS_SUCCESS;
}