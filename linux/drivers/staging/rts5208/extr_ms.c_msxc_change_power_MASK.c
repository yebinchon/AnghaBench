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
 int MS_INT_CMDNK ; 
 int MS_INT_ERR ; 
 int /*<<< orphan*/  MS_TRANS_CFG ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int /*<<< orphan*/  PRO_WRITE_REG ; 
 int /*<<< orphan*/  Pro_DataCount1 ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WAIT_INT ; 
 int /*<<< orphan*/  XC_CHG_POWER ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct rtsx_chip *chip, u8 mode)
{
	int retval;
	u8 buf[6];

	FUNC0(chip);

	retval = FUNC2(chip, 0, 0, Pro_DataCount1, 6);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	buf[0] = 0;
	buf[1] = mode;
	buf[2] = 0;
	buf[3] = 0;
	buf[4] = 0;
	buf[5] = 0;

	retval = FUNC3(chip, PRO_WRITE_REG, 6, NO_WAIT_INT, buf, 6);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC1(chip, XC_CHG_POWER, WAIT_INT);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC4(chip, MS_TRANS_CFG, buf);
	if (retval)
		return retval;

	if (buf[0] & (MS_INT_CMDNK | MS_INT_ERR))
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}