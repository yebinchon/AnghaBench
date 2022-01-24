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
struct regulator_dev {int /*<<< orphan*/  open_count; int /*<<< orphan*/ * supply; int /*<<< orphan*/  dev; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (struct regulator_dev*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
		      struct regulator_dev *supply_rdev)
{
	int err;

	FUNC2(rdev, "supplied by %s\n", FUNC1(supply_rdev));

	if (!FUNC3(supply_rdev->owner))
		return -ENODEV;

	rdev->supply = FUNC0(supply_rdev, &rdev->dev, "SUPPLY");
	if (rdev->supply == NULL) {
		err = -ENOMEM;
		return err;
	}
	supply_rdev->open_count++;

	return 0;
}