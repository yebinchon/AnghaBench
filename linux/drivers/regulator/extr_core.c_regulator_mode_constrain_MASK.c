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
struct TYPE_2__ {unsigned int valid_modes_mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  REGULATOR_CHANGE_MODE ; 
#define  REGULATOR_MODE_FAST 131 
#define  REGULATOR_MODE_IDLE 130 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev,
				    unsigned int *mode)
{
	switch (*mode) {
	case REGULATOR_MODE_FAST:
	case REGULATOR_MODE_NORMAL:
	case REGULATOR_MODE_IDLE:
	case REGULATOR_MODE_STANDBY:
		break;
	default:
		FUNC0(rdev, "invalid mode %x specified\n", *mode);
		return -EINVAL;
	}

	if (!FUNC1(rdev, REGULATOR_CHANGE_MODE)) {
		FUNC0(rdev, "mode operation not allowed\n");
		return -EPERM;
	}

	/* The modes are bitmasks, the most power hungry modes having
	 * the lowest values. If the requested mode isn't supported
	 * try higher modes. */
	while (*mode) {
		if (rdev->constraints->valid_modes_mask & *mode)
			return 0;
		*mode /= 2;
	}

	return -EINVAL;
}