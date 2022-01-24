#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {TYPE_1__* constraints; } ;
struct TYPE_2__ {int max_uV; int min_uV; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  REGULATOR_CHANGE_VOLTAGE ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,int /*<<< orphan*/ ) ; 

int FUNC3(struct regulator_dev *rdev,
			    int *min_uV, int *max_uV)
{
	FUNC0(*min_uV > *max_uV);

	if (!FUNC2(rdev, REGULATOR_CHANGE_VOLTAGE)) {
		FUNC1(rdev, "voltage operation not allowed\n");
		return -EPERM;
	}

	if (*max_uV > rdev->constraints->max_uV)
		*max_uV = rdev->constraints->max_uV;
	if (*min_uV < rdev->constraints->min_uV)
		*min_uV = rdev->constraints->min_uV;

	if (*min_uV > *max_uV) {
		FUNC1(rdev, "unsupportable voltage range: %d-%duV\n",
			 *min_uV, *max_uV);
		return -EINVAL;
	}

	return 0;
}