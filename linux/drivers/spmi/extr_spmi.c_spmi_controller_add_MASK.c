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
struct spmi_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_registered ; 
 int /*<<< orphan*/  FUNC4 (struct spmi_controller*) ; 

int FUNC5(struct spmi_controller *ctrl)
{
	int ret;

	/* Can't register until after driver model init */
	if (FUNC1(!is_registered))
		return -EAGAIN;

	ret = FUNC3(&ctrl->dev);
	if (ret)
		return ret;

	if (FUNC0(CONFIG_OF))
		FUNC4(ctrl);

	FUNC2(&ctrl->dev, "spmi-%d registered: dev:%p\n",
		ctrl->nr, &ctrl->dev);

	return 0;
}