#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct regulator_dev {int /*<<< orphan*/  owner; TYPE_1__ dev; scalar_t__ exclusive; int /*<<< orphan*/  open_count; } ;
struct regulator {int /*<<< orphan*/  supply_name; int /*<<< orphan*/  list; scalar_t__ dev; int /*<<< orphan*/  debugfs; struct regulator_dev* rdev; int /*<<< orphan*/  enable_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  regulator_list_mutex ; 
 int /*<<< orphan*/  FUNC10 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct regulator *regulator)
{
	struct regulator_dev *rdev;

	if (FUNC0(regulator))
		return;

	FUNC7(&regulator_list_mutex);

	/* Docs say you must disable before calling regulator_put() */
	FUNC1(regulator->enable_count);

	rdev = regulator->rdev;

	FUNC2(regulator->debugfs);

	if (regulator->dev) {
		FUNC3(regulator->dev, &rdev->dev);

		/* remove any sysfs entries */
		FUNC12(&rdev->dev.kobj, regulator->supply_name);
	}

	FUNC10(rdev);
	FUNC6(&regulator->list);

	rdev->open_count--;
	rdev->exclusive = 0;
	FUNC9(&rdev->dev);
	FUNC11(rdev);

	FUNC5(regulator->supply_name);
	FUNC4(regulator);

	FUNC8(rdev->owner);
}