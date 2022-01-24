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
struct da9063 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9063_REG_CONTROL_D ; 
 int /*<<< orphan*/  DA9063_TWDSCALE_MASK ; 
 int FUNC0 (struct da9063*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(struct da9063 *da9063, unsigned int timeout)
{
	unsigned int regval;
	int ret;

	/*
	 * The watchdog triggers a reboot if a timeout value is already
	 * programmed because the timeout value combines two functions
	 * in one: indicating the counter limit and starting the watchdog.
	 * The watchdog must be disabled to be able to change the timeout
	 * value if the watchdog is already running. Then we can set the
	 * new timeout value which enables the watchdog again.
	 */
	ret = FUNC0(da9063);
	if (ret)
		return ret;

	FUNC3(150, 300);
	regval = FUNC1(timeout);

	return FUNC2(da9063->regmap, DA9063_REG_CONTROL_D,
				  DA9063_TWDSCALE_MASK, regval);
}