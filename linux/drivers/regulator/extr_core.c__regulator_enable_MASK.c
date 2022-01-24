#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int n_coupled; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct regulator_dev {scalar_t__ use_count; struct regulator* supply; TYPE_2__ coupling_desc; TYPE_1__ mutex; } ;
struct regulator {struct regulator_dev* rdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  PM_SUSPEND_ON ; 
 int /*<<< orphan*/  REGULATOR_CHANGE_STATUS ; 
 int /*<<< orphan*/  REGULATOR_EVENT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator*) ; 
 int FUNC4 (struct regulator*) ; 
 int FUNC5 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct regulator_dev*,char*,int) ; 
 int FUNC8 (struct regulator_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct regulator_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct regulator *regulator)
{
	struct regulator_dev *rdev = regulator->rdev;
	int ret;

	FUNC6(&rdev->mutex.base);

	if (rdev->use_count == 0 && rdev->supply) {
		ret = FUNC10(rdev->supply);
		if (ret < 0)
			return ret;
	}

	/* balance only if there are regulators coupled */
	if (rdev->coupling_desc.n_coupled > 1) {
		ret = FUNC8(rdev, PM_SUSPEND_ON);
		if (ret < 0)
			goto err_disable_supply;
	}

	ret = FUNC4(regulator);
	if (ret < 0)
		goto err_disable_supply;

	if (rdev->use_count == 0) {
		/* The regulator may on if it's not switchable or left on */
		ret = FUNC5(rdev);
		if (ret == -EINVAL || ret == 0) {
			if (!FUNC9(rdev,
					REGULATOR_CHANGE_STATUS)) {
				ret = -EPERM;
				goto err_consumer_disable;
			}

			ret = FUNC2(rdev);
			if (ret < 0)
				goto err_consumer_disable;

			FUNC0(rdev, REGULATOR_EVENT_ENABLE,
					     NULL);
		} else if (ret < 0) {
			FUNC7(rdev, "is_enabled() failed: %d\n", ret);
			goto err_consumer_disable;
		}
		/* Fallthrough on positive return values - already enabled */
	}

	rdev->use_count++;

	return 0;

err_consumer_disable:
	FUNC3(regulator);

err_disable_supply:
	if (rdev->use_count == 0 && rdev->supply)
		FUNC1(rdev->supply);

	return ret;
}