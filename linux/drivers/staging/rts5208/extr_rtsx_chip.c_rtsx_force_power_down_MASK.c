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
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FPDCTL ; 
 int MS_OC_POWER_DOWN ; 
 int OC_PDCTL ; 
 int /*<<< orphan*/  SD_MS_2LUN ; 
 int SD_OC_POWER_DOWN ; 
 int SSC_PDCTL ; 
 int SSC_POWER_DOWN ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct rtsx_chip *chip, u8 ctl)
{
	int retval;
	u8 mask = 0, val = 0;

	if (ctl & SSC_PDCTL)
		mask |= SSC_POWER_DOWN;

#ifdef SUPPORT_OCP
	if (ctl & OC_PDCTL) {
		mask |= SD_OC_POWER_DOWN;
		if (CHECK_LUN_MODE(chip, SD_MS_2LUN))
			mask |= MS_OC_POWER_DOWN;
	}
#endif

	if (mask) {
		val = mask;
		retval = FUNC1(chip, FPDCTL, mask, val);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}