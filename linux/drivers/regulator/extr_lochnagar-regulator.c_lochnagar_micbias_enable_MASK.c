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
struct regulator_dev {int dummy; } ;
struct lochnagar {int /*<<< orphan*/  analogue_config_lock; } ;

/* Variables and functions */
 int FUNC0 (struct lochnagar*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lochnagar* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct lochnagar *lochnagar = FUNC3(rdev);
	int ret;

	FUNC1(&lochnagar->analogue_config_lock);

	ret = FUNC4(rdev);
	if (ret < 0)
		goto err;

	ret = FUNC0(lochnagar);

err:
	FUNC2(&lochnagar->analogue_config_lock);

	return ret;
}