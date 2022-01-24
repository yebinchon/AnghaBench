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
struct regulator_dev {struct regulation_constraints* constraints; } ;
struct regulation_constraints {int min_uV; int max_uV; int uV_offset; int min_uA; int max_uA; int valid_modes_mask; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  REGULATOR_CHANGE_VOLTAGE ; 
 int REGULATOR_MODE_FAST ; 
 int REGULATOR_MODE_IDLE ; 
 int REGULATOR_MODE_NORMAL ; 
 int REGULATOR_MODE_STANDBY ; 
 int FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,char*) ; 
 int FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,size_t,char*,...) ; 

__attribute__((used)) static void FUNC6(struct regulator_dev *rdev)
{
	struct regulation_constraints *constraints = rdev->constraints;
	char buf[160] = "";
	size_t len = sizeof(buf) - 1;
	int count = 0;
	int ret;

	if (constraints->min_uV && constraints->max_uV) {
		if (constraints->min_uV == constraints->max_uV)
			count += FUNC5(buf + count, len - count, "%d mV ",
					   constraints->min_uV / 1000);
		else
			count += FUNC5(buf + count, len - count,
					   "%d <--> %d mV ",
					   constraints->min_uV / 1000,
					   constraints->max_uV / 1000);
	}

	if (!constraints->min_uV ||
	    constraints->min_uV != constraints->max_uV) {
		ret = FUNC3(rdev);
		if (ret > 0)
			count += FUNC5(buf + count, len - count,
					   "at %d mV ", ret / 1000);
	}

	if (constraints->uV_offset)
		count += FUNC5(buf + count, len - count, "%dmV offset ",
				   constraints->uV_offset / 1000);

	if (constraints->min_uA && constraints->max_uA) {
		if (constraints->min_uA == constraints->max_uA)
			count += FUNC5(buf + count, len - count, "%d mA ",
					   constraints->min_uA / 1000);
		else
			count += FUNC5(buf + count, len - count,
					   "%d <--> %d mA ",
					   constraints->min_uA / 1000,
					   constraints->max_uA / 1000);
	}

	if (!constraints->min_uA ||
	    constraints->min_uA != constraints->max_uA) {
		ret = FUNC0(rdev);
		if (ret > 0)
			count += FUNC5(buf + count, len - count,
					   "at %d mA ", ret / 1000);
	}

	if (constraints->valid_modes_mask & REGULATOR_MODE_FAST)
		count += FUNC5(buf + count, len - count, "fast ");
	if (constraints->valid_modes_mask & REGULATOR_MODE_NORMAL)
		count += FUNC5(buf + count, len - count, "normal ");
	if (constraints->valid_modes_mask & REGULATOR_MODE_IDLE)
		count += FUNC5(buf + count, len - count, "idle ");
	if (constraints->valid_modes_mask & REGULATOR_MODE_STANDBY)
		count += FUNC5(buf + count, len - count, "standby");

	if (!count)
		FUNC5(buf, len, "no parameters");

	FUNC1(rdev, "%s\n", buf);

	if ((constraints->min_uV != constraints->max_uV) &&
	    !FUNC4(rdev, REGULATOR_CHANGE_VOLTAGE))
		FUNC2(rdev,
			  "Voltage range but no REGULATOR_CHANGE_VOLTAGE\n");
}