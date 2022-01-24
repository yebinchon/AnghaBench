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
struct pinctrl_dev {int /*<<< orphan*/  node; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  pinctrldev_list ; 
 int /*<<< orphan*/  pinctrldev_list_mutex ; 

int FUNC8(struct pinctrl_dev *pctldev)
{
	int error;

	error = FUNC6(pctldev);
	if (error) {
		FUNC0(pctldev->dev, "could not claim hogs: %i\n",
			error);
		FUNC3(&pctldev->mutex);
		FUNC1(pctldev);

		return error;
	}

	FUNC4(&pinctrldev_list_mutex);
	FUNC2(&pctldev->node, &pinctrldev_list);
	FUNC5(&pinctrldev_list_mutex);

	FUNC7(pctldev);

	return 0;
}