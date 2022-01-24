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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SD_CFG3 ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct rtsx_chip *chip)
{
	int retval;

	retval = FUNC0(chip, REG_SD_CFG3, 0x01, 0x01);
	if (retval)
		return retval;
	FUNC1(5);
	retval = FUNC0(chip, REG_SD_CFG3, 0x01, 0);
	if (retval)
		return retval;

	return STATUS_SUCCESS;
}