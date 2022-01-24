#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct esb_dev {TYPE_1__* pdev; int /*<<< orphan*/ * base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESB_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct esb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC7(struct esb_dev *edev)
{
	if (FUNC3(edev->pdev)) {
		FUNC0(&edev->pdev->dev, "failed to enable device\n");
		goto err_devput;
	}

	if (FUNC6(edev->pdev, 0, ESB_MODULE_NAME)) {
		FUNC0(&edev->pdev->dev, "failed to request region\n");
		goto err_disable;
	}

	edev->base = FUNC4(edev->pdev, 0);
	if (edev->base == NULL) {
		/* Something's wrong here, BASEADDR has to be set */
		FUNC0(&edev->pdev->dev, "failed to get BASEADDR\n");
		goto err_release;
	}

	/* Done */
	FUNC1(&edev->pdev->dev, edev);
	return 1;

err_release:
	FUNC5(edev->pdev, 0);
err_disable:
	FUNC2(edev->pdev);
err_devput:
	return 0;
}