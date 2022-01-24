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
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int READY_FLAG ; 
 int READY_STATE ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  XD_CARD ; 
 int /*<<< orphan*/  XD_CTL ; 
 int /*<<< orphan*/  XD_DAT ; 
 int XD_RDY ; 
 int XD_RESET ; 
 int /*<<< orphan*/  XD_TRANSFER ; 
 int XD_TRANSFER_END ; 
 int XD_TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int* FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip)
{
	int retval;
	u8 *ptr;

	FUNC2(chip);

	FUNC0(chip, WRITE_REG_CMD, XD_TRANSFER,
		     0xFF, XD_TRANSFER_START | XD_RESET);
	FUNC0(chip, CHECK_REG_CMD, XD_TRANSFER,
		     XD_TRANSFER_END, XD_TRANSFER_END);
	FUNC0(chip, READ_REG_CMD, XD_DAT, 0, 0);
	FUNC0(chip, READ_REG_CMD, XD_CTL, 0, 0);

	retval = FUNC3(chip, XD_CARD, 100);
	if (retval < 0)
		return STATUS_FAIL;

	ptr = FUNC1(chip) + 1;
	if (((ptr[0] & READY_FLAG) == READY_STATE) && (ptr[1] & XD_RDY))
		return STATUS_SUCCESS;

	return STATUS_FAIL;
}