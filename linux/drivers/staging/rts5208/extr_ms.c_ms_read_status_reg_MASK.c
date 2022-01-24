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
 int /*<<< orphan*/  MS_FLASH_READ_ERROR ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int /*<<< orphan*/  READ_REG ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int STS_UCDT ; 
 int STS_UCEX ; 
 int STS_UCFG ; 
 int /*<<< orphan*/  StatusReg0 ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rtsx_chip *chip)
{
	int retval;
	u8 val[2];

	retval = FUNC2(chip, StatusReg0, 2, 0, 0);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC0(chip, READ_REG, 2, NO_WAIT_INT, val, 2);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (val[1] & (STS_UCDT | STS_UCEX | STS_UCFG)) {
		FUNC1(chip, MS_FLASH_READ_ERROR);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}