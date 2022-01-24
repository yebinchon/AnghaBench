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
struct twlreg_info {int /*<<< orphan*/  id; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_GRP_P1 ; 
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  REGULATOR_MODE_NORMAL 129 
#define  REGULATOR_MODE_STANDBY 128 
 int /*<<< orphan*/  RES_STATE_ACTIVE ; 
 int /*<<< orphan*/  RES_STATE_SLEEP ; 
 struct twlreg_info* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev, unsigned mode)
{
	struct twlreg_info	*info = FUNC1(rdev);
	unsigned		message;

	/* We can only set the mode through state machine commands... */
	switch (mode) {
	case REGULATOR_MODE_NORMAL:
		message = FUNC0(DEV_GRP_P1, info->id, RES_STATE_ACTIVE);
		break;
	case REGULATOR_MODE_STANDBY:
		message = FUNC0(DEV_GRP_P1, info->id, RES_STATE_SLEEP);
		break;
	default:
		return -EINVAL;
	}

	return FUNC2(message);
}