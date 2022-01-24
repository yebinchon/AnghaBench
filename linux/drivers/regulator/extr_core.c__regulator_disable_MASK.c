#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int n_coupled; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct regulator_dev {int use_count; struct regulator* supply; TYPE_3__ coupling_desc; TYPE_2__* constraints; TYPE_1__ mutex; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  always_on; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int NOTIFY_STOP_MASK ; 
 int /*<<< orphan*/  PM_SUSPEND_ON ; 
 int /*<<< orphan*/  REGULATOR_CHANGE_STATUS ; 
 int /*<<< orphan*/  REGULATOR_EVENT_ABORT_DISABLE ; 
 int /*<<< orphan*/  REGULATOR_EVENT_DISABLE ; 
 int /*<<< orphan*/  REGULATOR_EVENT_PRE_DISABLE ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regulator_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator_dev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct regulator_dev*) ; 
 int FUNC7 (struct regulator_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct regulator_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct regulator *regulator)
{
	struct regulator_dev *rdev = regulator->rdev;
	int ret = 0;

	FUNC4(&rdev->mutex.base);

	if (FUNC0(rdev->use_count <= 0,
		 "unbalanced disables for %s\n", FUNC6(rdev)))
		return -EIO;

	/* are we the last user and permitted to disable ? */
	if (rdev->use_count == 1 &&
	    (rdev->constraints && !rdev->constraints->always_on)) {

		/* we are last user */
		if (FUNC8(rdev, REGULATOR_CHANGE_STATUS)) {
			ret = FUNC1(rdev,
						   REGULATOR_EVENT_PRE_DISABLE,
						   NULL);
			if (ret & NOTIFY_STOP_MASK)
				return -EINVAL;

			ret = FUNC2(rdev);
			if (ret < 0) {
				FUNC5(rdev, "failed to disable\n");
				FUNC1(rdev,
						REGULATOR_EVENT_ABORT_DISABLE,
						NULL);
				return ret;
			}
			FUNC1(rdev, REGULATOR_EVENT_DISABLE,
					NULL);
		}

		rdev->use_count = 0;
	} else if (rdev->use_count > 1) {
		rdev->use_count--;
	}

	if (ret == 0)
		ret = FUNC3(regulator);

	if (ret == 0 && rdev->coupling_desc.n_coupled > 1)
		ret = FUNC7(rdev, PM_SUSPEND_ON);

	if (ret == 0 && rdev->use_count == 0 && rdev->supply)
		ret = FUNC9(rdev->supply);

	return ret;
}