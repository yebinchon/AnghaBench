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
struct ltv350qv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LTV_GATECTL2 ; 
 int LTV_NW_INV_1LINE ; 
 int /*<<< orphan*/  LTV_PWRCTL1 ; 
 int /*<<< orphan*/  LTV_PWRCTL2 ; 
 int FUNC2 (int) ; 
 int LTV_VCOM_DISABLE ; 
 int FUNC3 (struct ltv350qv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct ltv350qv *lcd)
{
	int ret;

	/* Display Off Sequence */
	ret = FUNC3(lcd, LTV_PWRCTL1,
				 LTV_VCOM_DISABLE
				 | FUNC0(5)
				 | FUNC2(5));
	ret |= FUNC3(lcd, LTV_GATECTL2,
				  LTV_NW_INV_1LINE | FUNC1(3));

	/* Power down setting 1 */
	ret |= FUNC3(lcd, LTV_PWRCTL2, 0x0000);

	/* Wait at least 1 ms */
	FUNC4(1000, 1100);

	/* Power down setting 2 */
	ret |= FUNC3(lcd, LTV_PWRCTL1, LTV_VCOM_DISABLE);

	/*
	 * No point in trying to recover here. If we can't switch the
	 * panel off, what are we supposed to do other than inform the
	 * user about the failure?
	 */
	if (ret)
		return -EIO;

	/* Display power should now be OFF */
	return 0;
}