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
struct ww_acquire_ctx {int dummy; } ;
struct TYPE_2__ {int n_coupled; } ;
struct regulator_dev {scalar_t__ use_count; scalar_t__ supply; TYPE_1__ coupling_desc; } ;
struct regulator {scalar_t__ uA_load; struct regulator_dev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_SUSPEND_ON ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator_dev*,struct ww_acquire_ctx*) ; 

int FUNC6(struct regulator *regulator)
{
	struct regulator_dev *rdev = regulator->rdev;
	struct ww_acquire_ctx ww_ctx;
	int ret;

	FUNC4(rdev, &ww_ctx);

	ret = FUNC1(regulator->rdev);

	if (rdev->coupling_desc.n_coupled > 1)
		FUNC3(rdev, PM_SUSPEND_ON);

	if (regulator->uA_load) {
		regulator->uA_load = 0;
		ret = FUNC2(rdev);
	}

	if (rdev->use_count != 0 && rdev->supply)
		FUNC0(rdev->supply);

	FUNC5(rdev, &ww_ctx);

	return ret;
}