#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pinctrl_dev {int /*<<< orphan*/  dev; TYPE_1__* hog_sleep; TYPE_1__* p; TYPE_1__* hog_default; } ;
struct TYPE_7__ {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PINCTRL_STATE_DEFAULT ; 
 int /*<<< orphan*/  PINCTRL_STATE_SLEEP ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev)
{
	pctldev->p = FUNC2(pctldev->dev, pctldev);
	if (FUNC1(pctldev->p) == -ENODEV) {
		FUNC3(pctldev->dev, "no hogs found\n");

		return 0;
	}

	if (FUNC0(pctldev->p)) {
		FUNC4(pctldev->dev, "error claiming hogs: %li\n",
			FUNC1(pctldev->p));

		return FUNC1(pctldev->p);
	}

	FUNC5(&pctldev->p->users);
	pctldev->hog_default =
		FUNC6(pctldev->p, PINCTRL_STATE_DEFAULT);
	if (FUNC0(pctldev->hog_default)) {
		FUNC3(pctldev->dev,
			"failed to lookup the default state\n");
	} else {
		if (FUNC7(pctldev->p,
					 pctldev->hog_default))
			FUNC4(pctldev->dev,
				"failed to select default state\n");
	}

	pctldev->hog_sleep =
		FUNC6(pctldev->p,
				     PINCTRL_STATE_SLEEP);
	if (FUNC0(pctldev->hog_sleep))
		FUNC3(pctldev->dev,
			"failed to lookup the sleep state\n");

	return 0;
}