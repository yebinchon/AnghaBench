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
typedef  int u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int,int*) ; 
 int FUNC1 (struct rtsx_chip*,int,int) ; 

int FUNC2(struct rtsx_chip *chip, u8 reg, u8 bit)
{
	int retval;
	u16 value;

	retval = FUNC0(chip, reg, &value);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	if (value & (1 << bit)) {
		value &= ~(1 << bit);
		retval = FUNC1(chip, reg, value);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}