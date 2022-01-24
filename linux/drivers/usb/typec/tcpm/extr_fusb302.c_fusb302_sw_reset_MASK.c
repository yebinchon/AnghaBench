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
struct fusb302_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSB_REG_RESET ; 
 int /*<<< orphan*/  FUSB_REG_RESET_SW_RESET ; 
 int FUNC0 (struct fusb302_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fusb302_chip*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct fusb302_chip *chip)
{
	int ret = 0;

	ret = FUNC0(chip, FUSB_REG_RESET,
				FUSB_REG_RESET_SW_RESET);
	if (ret < 0)
		FUNC1(chip, "cannot sw reset the chip, ret=%d", ret);
	else
		FUNC1(chip, "sw reset");

	return ret;
}