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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct regulator_dev {TYPE_1__ dev; } ;
struct hi6421_regulator_pdata {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct hi6421_regulator_pdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct hi6421_regulator_pdata *pdata;

	pdata = FUNC0(rdev->dev.parent);
	/* hi6421 spec requires regulator enablement must be serialized:
	 *  - Because when BUCK, LDO switching from off to on, it will have
	 *    a huge instantaneous current; so you can not turn on two or
	 *    more LDO or BUCKs simultaneously, or it may burn the chip.
	 */
	FUNC1(&pdata->lock);

	/* call regulator regmap helper */
	FUNC3(rdev);

	FUNC2(&pdata->lock);
	return 0;
}