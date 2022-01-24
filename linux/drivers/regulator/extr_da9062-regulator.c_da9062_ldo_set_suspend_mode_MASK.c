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
struct regulator_dev {int dummy; } ;
struct da9062_regulator {int /*<<< orphan*/  suspend_sleep; } ;

/* Variables and functions */
 int EINVAL ; 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 struct da9062_regulator* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
						unsigned mode)
{
	struct da9062_regulator *regl = FUNC0(rdev);
	unsigned val;

	switch (mode) {
	case REGULATOR_MODE_NORMAL:
		val = 0;
		break;
	case REGULATOR_MODE_STANDBY:
		val = 1;
		break;
	default:
		return -EINVAL;
	}

	return FUNC1(regl->suspend_sleep, val);
}