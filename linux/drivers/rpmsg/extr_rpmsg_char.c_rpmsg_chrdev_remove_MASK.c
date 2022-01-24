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
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct rpmsg_ctrldev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct rpmsg_ctrldev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpmsg_eptdev_destroy ; 

__attribute__((used)) static void FUNC5(struct rpmsg_device *rpdev)
{
	struct rpmsg_ctrldev *ctrldev = FUNC0(&rpdev->dev);
	int ret;

	/* Destroy all endpoints */
	ret = FUNC3(&ctrldev->dev, NULL, rpmsg_eptdev_destroy);
	if (ret)
		FUNC1(&rpdev->dev, "failed to nuke endpoints: %d\n", ret);

	FUNC2(&ctrldev->dev);
	FUNC4(&ctrldev->dev);
}