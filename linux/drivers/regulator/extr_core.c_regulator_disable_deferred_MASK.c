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
struct regulator_dev {int /*<<< orphan*/  disable_work; } ;
struct regulator {int /*<<< orphan*/  deferred_disables; struct regulator_dev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

int FUNC5(struct regulator *regulator, int ms)
{
	struct regulator_dev *rdev = regulator->rdev;

	if (!ms)
		return FUNC2(regulator);

	FUNC3(rdev);
	regulator->deferred_disables++;
	FUNC0(system_power_efficient_wq, &rdev->disable_work,
			 FUNC1(ms));
	FUNC4(rdev);

	return 0;
}