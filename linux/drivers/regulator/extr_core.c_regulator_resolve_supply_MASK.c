#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ parent; } ;
struct regulator_dev {int /*<<< orphan*/ * supply; scalar_t__ use_count; TYPE_2__ dev; TYPE_1__* desc; int /*<<< orphan*/  supply_name; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct regulator_dev* dummy_regulator_rdev ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct regulator_dev* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct regulator_dev*,struct regulator_dev*) ; 

__attribute__((used)) static int FUNC11(struct regulator_dev *rdev)
{
	struct regulator_dev *r;
	struct device *dev = rdev->dev.parent;
	int ret;

	/* No supply to resolve? */
	if (!rdev->supply_name)
		return 0;

	/* Supply already resolved? */
	if (rdev->supply)
		return 0;

	r = FUNC8(dev, rdev->supply_name);
	if (FUNC0(r)) {
		ret = FUNC1(r);

		/* Did the lookup explicitly defer for us? */
		if (ret == -EPROBE_DEFER)
			return ret;

		if (FUNC6()) {
			r = dummy_regulator_rdev;
			FUNC5(&r->dev);
		} else {
			FUNC3(dev, "Failed to resolve %s-supply for %s\n",
				rdev->supply_name, rdev->desc->name);
			return -EPROBE_DEFER;
		}
	}

	/*
	 * If the supply's parent device is not the same as the
	 * regulator's parent device, then ensure the parent device
	 * is bound before we resolve the supply, in case the parent
	 * device get probe deferred and unregisters the supply.
	 */
	if (r->dev.parent && r->dev.parent != rdev->dev.parent) {
		if (!FUNC4(r->dev.parent)) {
			FUNC7(&r->dev);
			return -EPROBE_DEFER;
		}
	}

	/* Recursively resolve the supply of the supply */
	ret = FUNC11(r);
	if (ret < 0) {
		FUNC7(&r->dev);
		return ret;
	}

	ret = FUNC10(rdev, r);
	if (ret < 0) {
		FUNC7(&r->dev);
		return ret;
	}

	/*
	 * In set_machine_constraints() we may have turned this regulator on
	 * but we couldn't propagate to the supply if it hadn't been resolved
	 * yet.  Do it now.
	 */
	if (rdev->use_count) {
		ret = FUNC9(rdev->supply);
		if (ret < 0) {
			FUNC2(rdev->supply);
			rdev->supply = NULL;
			return ret;
		}
	}

	return 0;
}