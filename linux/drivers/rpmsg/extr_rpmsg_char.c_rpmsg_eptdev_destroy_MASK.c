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
struct rpmsg_eptdev {int /*<<< orphan*/  dev; int /*<<< orphan*/  readq; int /*<<< orphan*/  ept_lock; int /*<<< orphan*/ * ept; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rpmsg_eptdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, void *data)
{
	struct rpmsg_eptdev *eptdev = FUNC0(dev);

	FUNC2(&eptdev->ept_lock);
	if (eptdev->ept) {
		FUNC5(eptdev->ept);
		eptdev->ept = NULL;
	}
	FUNC3(&eptdev->ept_lock);

	/* wake up any blocked readers */
	FUNC6(&eptdev->readq);

	FUNC1(&eptdev->dev);
	FUNC4(&eptdev->dev);

	return 0;
}